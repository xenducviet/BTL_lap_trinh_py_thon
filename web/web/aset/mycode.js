$(document).ready(function () {
    $.post("api.aspx", {
        action: "thongke"
    }, function (data) {
        // Xử lý dữ liệu JSON nhận được
        console.log(data); // Ví dụ: in ra console

        // Chuyển đổi dữ liệu JSON thành mảng các đối tượng TeamStanding
        var teamStandings = JSON.parse(data);

        // Tạo mảng các màu sắc cho các cột biểu đồ
        var colors = ['#FF5733', '#C70039', '#900C3F', '#581845', '#2F4F4F', '#1E90FF'];

        // Tạo bảng HTML
        var tableHtml = `
            <table>
                <thead>
                    <tr>
                        <th>Team</th>
                        <th>Points</th>
                        <th>Rank</th>
                    </tr>
                </thead>
                <tbody>
        `;

        // Mảng để lưu tên đội và điểm số cho biểu đồ
        var teams = [];
        var points = [];

        // Lặp qua mỗi phần tử trong mảng dữ liệu
        teamStandings.forEach((item, index) => {
            tableHtml += `
                <tr class="team-row" data-index="${index}" data-wins="${item.wins}" data-draws="${item.draws}" data-losses="${item.losses}" data-played="${item.played}" data-remaining="${item.remaining}">
                    <td>${item.team}</td>
                    <td>${item.points}</td>
                    <td>${item.rank}</td>
                </tr>
            `;
            teams.push(item.team);
            points.push(item.points);
        });

        tableHtml += `
                </tbody>
            </table>
        `;

        // Đưa bảng HTML vào một div có id là "table-container"
        $('#table-container').html(tableHtml);

        // Vẽ biểu đồ
        var ctx = document.getElementById('pointsChart').getContext('2d');
        var pointsChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: teams,
                datasets: [{
                    label: 'Points',
                    data: points,
                    backgroundColor: colors,
                    borderColor: 'rgba(0, 0, 0, 0.5)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false, // Tắt tự động điều chỉnh kích thước
                scales: {
                    y: {
                        beginAtZero: true
                    }
                },
                plugins: {
                    legend: {
                        display: false // Ẩn chú thích
                    },
                    datalabels: {
                        anchor: 'end',
                        align: 'top',
                        formatter: Math.round,
                        font: {
                            weight: 'bold'
                        }
                    }
                }
            }
        });

        // Xử lý sự kiện mouseenter và mouseleave cho các dòng trong bảng
        $('.team-row').mouseenter(function () {
            // Lấy thông tin về số trận thắng, số trận hòa, số trận thua, số trận đã đấu và số trận còn lại từ thuộc tính data của dòng được hover
            var team = $(this).find('td:first-child').text(); // Lấy thông tin đội từ cột đầu tiên của dòng
            var wins = $(this).data('wins');
            var draws = $(this).data('draws');
            var losses = $(this).data('losses');
            var played = $(this).data('played');
            var remaining = $(this).data('remaining');

            // Tạo bảng HTML để hiển thị thông tin chi tiết của đội
            var teamInfoHtml = `
        <table>
            <tr>
                <td>Team:</td>
                <td>${team}</td>
            </tr>
            <tr>
                <td>Wins:</td>
                <td>${wins}</td>
            </tr>
            <tr>
                <td>Draws:</td>
                <td>${draws}</td>
            </tr>
            <tr>
                <td>Losses:</td>
                <td>${losses}</td>
            </tr>
            <tr>
                <td>Played:</td>
                <td>${played}</td>
            </tr>
            <tr>
                <td>Remaining:</td>
                <td>${remaining}</td>
            </tr>
        </table>`;

            // Hiển thị thông tin chi tiết của đội trong div có id "team-details"
            $('#team-details').html(teamInfoHtml).show();

            // Thêm lớp để đổi màu nền của dòng khi hover
            $(this).addClass('team-row-hover');
        }).mouseleave(function () {
            // Ẩn thông tin chi tiết khi chuột rời khỏi dòng
            $('#team-details').hide();

            // Xóa lớp đổi màu nền của dòng khi chuột rời khỏi dòng
            $(this).removeClass('team-row-hover');
        });

    }).fail(function (jqXHR, textStatus, errorThrown) {
        console.error("Request failed: " + textStatus + ", " + errorThrown);
        $('#table-container').html("An error occurred while loading data.");
    });
});
