import pyodbc

# Hàm kết nối với SQL Server
def connect_to_sql_server(server, database, username, password):
    connection_string = (
        'DRIVER={ODBC Driver 17 for SQL Server};'
        f'SERVER={server};'
        f'DATABASE={database};'
        f'UID={username};'
        f'PWD={password}'
    )
    return pyodbc.connect(connection_string)

# Hàm gọi stored procedure để chèn dữ liệu vào bảng GIAI_DAU
def insert_giai_dau(conn, id_giai, ten):
    cursor = conn.cursor()
    cursor.execute("{CALL InsertGiaiDau (?, ?)}", (id_giai, ten))
    conn.commit()

# Hàm gọi stored procedure để chèn dữ liệu vào bảng DOI
def insert_doi(conn, id_doi, ten_doi):
    cursor = conn.cursor()
    cursor.execute("{CALL InsertDoi (?, ?)}", (id_doi, ten_doi))
    conn.commit()

# Hàm gọi stored procedure để chèn dữ liệu vào bảng TRAN_DAU
def insert_tran_dau(conn, id_tran, id_giai, doi_nha, doi_khach, thoi_gian, btdn, btdk):
    cursor = conn.cursor()
    cursor.execute("{CALL InsertTranDau (?, ?, ?, ?, ?, ?, ?)}", (id_tran, id_giai, doi_nha, doi_khach, thoi_gian, btdn, btdk))
    conn.commit()

# Hàm gọi stored procedure để chèn dữ liệu vào bảng THONG_SO
def insert_thong_so(conn, id_tran, id_doi, thang, hoa, thua, diem):
    cursor = conn.cursor()
    cursor.execute("{CALL InsertThongSo (?, ?, ?, ?, ?, ?)}", (id_tran, id_doi, thang, hoa, thua, diem))
    conn.commit()

# Thông tin kết nối SQL Server
server = 'VIETDZAI'
database = 'PYTHON'
username = 'sa'
password = '250201'

# Kết nối với SQL Server
conn = connect_to_sql_server(server, database, username, password)

# Ví dụ chèn dữ liệu vào bảng GIAI_DAU
insert_giai_dau(conn, 2021, 'Premier League')

# Ví dụ chèn dữ liệu vào bảng DOI
insert_doi(conn, 1, 'Manchester United')

# Ví dụ chèn dữ liệu vào bảng TRAN_DAU
insert_tran_dau(conn, 1, 2021, 'Manchester United', 'Chelsea', '2021-05-12', 2, 2)

# Ví dụ chèn dữ liệu vào bảng THONG_SO
insert_thong_so(conn, 1, 1, 1, 0, 0, 3)

# Đóng kết nối
conn.close()
