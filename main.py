from typing import List, Dict
from fastapi import FastAPI
import requests
from datetime import datetime
from fastapi.responses import JSONResponse

app = FastAPI()

# API key của bạn từ Football-Data.org
API_KEY = '5141bdac69a6482a8aee3bab5e6d7f14'

# Hàm lấy lịch thi đấu và kết quả của một giải đấu cụ thể
def get_fixtures_results(competition_id: int) -> List[Dict]:
    url = f'https://api.football-data.org/v2/competitions/{competition_id}/matches'
    headers = {
        'X-Auth-Token': API_KEY
    }
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        return response.json()['matches']
    else:
        return []

# Hàm tính số trận thắng, hòa, thua, điểm, số trận đã đá và số trận còn lại của mỗi đội
def calculate_team_stats(matches: List[Dict]) -> Dict[str, Dict[str, int]]:
    team_stats = {}
    total_matches_per_team = 38  # Giả sử mỗi đội chơi tổng cộng 38 trận trong mùa giải

    for match in matches:
        home_team = match['homeTeam']['name']
        away_team = match['awayTeam']['name']

        if home_team not in team_stats:
            team_stats[home_team] = {'wins': 0, 'draws': 0, 'losses': 0, 'points': 0, 'played': 0, 'remaining': total_matches_per_team}
        if away_team not in team_stats:
            team_stats[away_team] = {'wins': 0, 'draws': 0, 'losses': 0, 'points': 0, 'played': 0, 'remaining': total_matches_per_team}

        if match['status'] == 'FINISHED':
            score_home = match['score']['fullTime']['homeTeam']
            score_away = match['score']['fullTime']['awayTeam']
            team_stats[home_team]['played'] += 1
            team_stats[away_team]['played'] += 1
            team_stats[home_team]['remaining'] -= 1
            team_stats[away_team]['remaining'] -= 1

            if score_home > score_away:
                team_stats[home_team]['wins'] += 1
                team_stats[home_team]['points'] += 3
                team_stats[away_team]['losses'] += 1
            elif score_home < score_away:
                team_stats[away_team]['wins'] += 1
                team_stats[away_team]['points'] += 3
                team_stats[home_team]['losses'] += 1
            else:
                team_stats[home_team]['draws'] += 1
                team_stats[away_team]['draws'] += 1
                team_stats[home_team]['points'] += 1
                team_stats[away_team]['points'] += 1

    return team_stats

# Hàm tìm ra tất cả các đội bóng và xếp hạng theo thứ tự điểm số
def get_all_teams_and_ranking(team_stats: Dict[str, Dict[str, int]]) -> List[Dict]:
    sorted_teams = sorted(team_stats.items(), key=lambda x: x[1]['points'], reverse=True)
    ranking = [{"team": team, **stats} for team, stats in sorted_teams]
    for rank, team in enumerate(ranking, start=1):
        team["rank"] = rank
    return ranking

@app.get("/")
def read_root():
    return {"message": "Welcome to the Football Data API"}

@app.get("/{competition_id}")
def display_results_and_top_teams(competition_id: int):
    fixtures_results = get_fixtures_results(competition_id)
    if fixtures_results:
        finished_matches = [match for match in fixtures_results if match['status'] == 'FINISHED']

        # Hiển thị tất cả các trận đấu đã diễn ra
        all_finished_matches = []
        for match in finished_matches:
            home_team = match['homeTeam']['name']
            away_team = match['awayTeam']['name']
            match_date = datetime.fromisoformat(match['utcDate'].replace("Z", "+00:00")).strftime('%d/%m/%Y')
            score_home = match['score']['fullTime']['homeTeam']
            score_away = match['score']['fullTime']['awayTeam']
            all_finished_matches.append({
                "home_team": home_team,
                "away_team": away_team,
                "score_home": score_home,
                "score_away": score_away,
                "date": match_date
            })

        # Tính toán số trận thắng, hòa, thua, điểm, số trận đã đá và số trận còn lại của mỗi đội
        team_stats = calculate_team_stats(fixtures_results)

        # Lấy thông tin của tất cả các đội bóng và xếp hạng theo thứ tự điểm số
        all_teams_and_ranking = get_all_teams_and_ranking(team_stats)

        return JSONResponse(content={
            "all_finished_matches": all_finished_matches,
            "all_teams_and_ranking": all_teams_and_ranking
        })
    else:
        return JSONResponse(content={"error": "No fixtures and results available for this competition."})

if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host="127.0.0.1", port=8000)


    # Mã các giải đấu

    # "Premier League (Anh)": 2021,
    #"La Liga (Tây Ban Nha)": 2014,
    #"Bundesliga (Đức)": 2002,
    #"Serie A (Ý)": 2019,
    #"Ligue 1 (Pháp)": 2015,
