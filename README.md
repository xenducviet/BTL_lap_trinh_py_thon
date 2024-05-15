THOI DÕI GIÁ TRỊ CỦA TOP CÁC CẦU THỦ HÀNG ĐẦU TRÊN THẾ GIỚI
1. Cơ sở dữ liệu:
- Bảng:
    Player: Lưu thông tin về cầu thủ, bao gồm ID (PK), tên,năm sinh, quốc tịch, giá trị chuyển nhượng.
- Stored Procedures (SP_):
    SP_GetTopPlayers: Lấy thông tin của 5 cầu thủ có giá trị chuyển nhượng cao nhất.
2. Module đọc dữ liệu:
    Sử dụng Python và FastAPI để tạo một API để lấy dữ liệu từ trang web chuyên về bóng đá hoặc dịch vụ API thương mại như FIFA

Mô tả nguồn dữ liệu:
-   Sử dụng Web Scraping hoặc lấy dữ liệu qua API của các trang web chuyên về bóng đá.
-   Dữ liệu bao gồm thông tin về cầu thủ và giá trị chuyển nhượng.
3. Node-RED:
    Xây dựng một chu trình trong Node-RED để tự động gọi API Python để lấy dữ liệu. Sau đó, xử lý dữ liệu và ghi dữ liệu vào cơ sở dữ liệu.

4. Web:
-   Xây dựng một ứng dụng web để hiển thị dữ liệu từ cơ sở dữ liệu. 
-   Hiển thị danh sách các cầu thủ và giá trị chuyển nhượng của họ hoặc biểu đồ các cầu thủ có giá trị chuyển nhượng cao nhất.
-   Sử dụng các công nghệ như HTML, CSS, JavaScript để tạo giao diện web.





