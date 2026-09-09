import sys
import oracledb

# Database Connection Details
DB_USER = "sys"             # Aapka DB Username / Schema
DB_PASSWORD = "Oracle_12345" # Aapka DB Password
DB_HOST = "localhost"       # DB Host IP
DB_PORT = "1521"            # Default Port
DB_SERVICE = "ORCLPDB"      # Aapka PDB Name

def test_connection():
    try:
        dsn = f"{DB_HOST}:{DB_PORT}/{DB_SERVICE}"
        print("Connecting to Oracle Database...")
        
        # Connect to Database
        conn = oracledb.connect(user=DB_USER, password=DB_PASSWORD, dsn=dsn)
        print("✅ Database Connection Successful!\n")
        
        cursor = conn.cursor()
        
        # 1. Fetch DB Date
        cursor.execute("SELECT SYSDATE FROM DUAL")
        db_date = cursor.fetchone()[0]
        print(f"Current DB Date: {db_date}")
        
        # 2. Insert Test Record
        prompt_text = "Hello Local AI!"
        response_text = "Hello! Main aapka Smart HR Assistant hoon."
        
        insert_sql = """
            INSERT INTO ai_chat_history (user_prompt, ai_response) 
            VALUES (:1, :2)
        """
        cursor.execute(insert_sql, [prompt_text, response_text])
        conn.commit()
        
        print("✅ Test Record Inserted into 'ai_chat_history' Table successfully!")
        
        cursor.close()
        conn.close()
        
    except Exception as e:
        print("❌ Error:", e)

if __name__ == "__main__":
    test_connection()