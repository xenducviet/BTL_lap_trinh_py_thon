THOI DÕI BẢNG XẾP HẠNG CỦA CÁC ĐỘI BÓNG TRONG GIẢI ĐẤU
1. Cơ sở dữ liệu:
     * Bảng Competitions: Lưu trữ thông tin về các giải đấu.
        - competition_id: ID của giải đấu (Primary Key)
        - name: Tên của giải đấu
    * Bảng Matches: Lưu trữ thông tin về các trận đấu.
        - match_id: ID của trận đấu (Primary Key)
        - competition_id: ID của giải đấu (Foreign Key)
        - home_team: Tên đội chủ nhà
        - away_team: Tên đội khách
        - match_date: Ngày diễn ra trận đấu
        - score_home: Số bàn thắng của đội chủ nhà
        - score_away: Số bàn thắng của đội khách
    * Bảng Teams: Lưu trữ thông tin về các đội bóng.
        - team_id: ID của đội bóng (Primary Key)
        - name: Tên của đội bóng
    * Bảng TeamStats: Lưu trữ thống kê kết quả của từng đội trong mỗi trận đấu.
        - match_id: ID của trận đấu (Foreign Key)
        - team_id: ID của đội bóng (Foreign Key)
        - wins: Số trận thắng
        - draws: Số trận hòa
        - losses: Số trận thua
        - points: Điểm số

* Stored Procedures (SP_):
    SP_GetTopTeam: Lấy thông tin của 4 đội bóng có số điểm cao nhất
2. Module đọc dữ liệu:
    Sử dụng Python và FastAPI để tạo một API để lấy dữ liệu từ trang web chuyên về bóng đá hoặc dịch vụ API thương mại như FIFA

Mô tả nguồn dữ liệu:
-   Sử dụng Web Scraping hoặc lấy dữ liệu qua API của các trang web chuyên về bóng đá.
-   Dữ liệu bao gồm thông tin về giải đấu, trận đấu, điểm số, bảng xếp hạng
3. Node-RED:
    Xây dựng một chu trình trong Node-RED để tự động gọi API Python để lấy dữ liệu. Sau đó, xử lý dữ liệu và ghi dữ liệu vào cơ sở dữ liệu.

4. Web:
-   Xây dựng một ứng dụng web để hiển thị dữ liệu từ cơ sở dữ liệu. 
-   Hiển thị danh sách các đội bóng, và bảng xếp hạng của các đội bóng đó
-   Sử dụng các công nghệ như HTML, CSS, JavaScript để tạo giao diện web.





