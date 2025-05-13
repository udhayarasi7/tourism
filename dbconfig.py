import mysql.connector
from mysql.connector import Error

try:
    db = mysql.connector.connect(
        host="localhost",
        user="root",       # MySQL username
        password="",       # Password (empty for XAMPP)
        database="tourx"   # Database name
    )

    # Check if connection was successful
    if db.is_connected():
        print("Successfully connected to the database!")

except Error as err:
    print(f"Error: {err}")
    db = None  # If the connection fails, set db to None
