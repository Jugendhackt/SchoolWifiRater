import sqlite3
conn = sqlite3.connect('ratings.db') # Warning: This file is created in the current directory
conn.execute("CREATE TABLE ratings (id INTEGER PRIMARY KEY, schools char(100) NOT NULL, Sterne int NOT NULL)")
conn.execute("INSERT INTO ratings (schools,Sterne) VALUES ('Name der bewerteten Schule.',1)")
conn.commit()