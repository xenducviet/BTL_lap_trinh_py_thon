from fastapi import FastAPI
from fastapi.responses import JSONResponse
import pyodbc

app = FastAPI()

def call_procedure():
    # Thông tin kết nối
    server = 'VIETDZAI'  # Địa chỉ máy chủ SQL
    database = 'PYTHON'  # Tên cơ sở dữ liệu
    username = 'sa'  # Tên người dùng
    password = '250201'  # Mật khẩu
    driver = '{ODBC Driver 17 for SQL Server}'  # Driver ODBC cho SQL Server

    # Chuỗi kết nối
    connection_string = f'DRIVER={driver};SERVER={server};DATABASE={database};UID={username};PWD={password}'

    try:
        # Kết nối tới cơ sở dữ liệu
        with pyodbc.connect(connection_string) as conn:
            cursor = conn.cursor()
            
            # Gọi stored procedure
            cursor.execute("{CALL selecttop4}")
            
            # Lấy kết quả
            rows = cursor.fetchall()

            # Chuyển kết quả thành danh sách các dict
            results = [dict(zip([column[0] for column in cursor.description], row)) for row in rows]
            return results

    except pyodbc.Error as e:
        return {"error": str(e)}

@app.get("/get_top4")
def get_top4():
    results = call_procedure()
    if "error" in results:
        return JSONResponse(content=results, status_code=500)
    return results
