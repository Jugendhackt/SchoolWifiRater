import sqlite3
verbindung = sqlite3.connect("ratings.db")
zeiger = verbindung.cursor()
zeiger.execute("SELECT * FROM ratings")
inhalt = zeiger.fetchall()
print(inhalt)
verbindung.close()