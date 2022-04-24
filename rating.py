import sqlite3
from bottle import route, run, debug, template, request

@route('/rating')
def hello():
	output = template('rating')
	return output

@route('/')
def show():
	conn = sqlite3.connect('ratings.db')
	c = conn.cursor()
	c.execute("SELECT schools, round(avg(Sterne), 1) FROM ratings GROUP BY schools ORDER BY avg(Sterne) DESC" )
	result = c.fetchall()
	output = template('rating_tabelle', result=result)
	return output

@route('/receive', method="GET")
def receive():
    ergebnis =''
    #print(request.GET.Bewertung) 
    if request.GET.Bewertung:

        schule = request.GET.schools
        sterne = request.GET.Sterne
        conn = sqlite3.connect('ratings.db')
        c = conn.cursor()

        c.execute("INSERT INTO ratings (schools, Sterne) VALUES (?,?)", (schule,sterne))
        new_id = c.lastrowid

        conn.commit()
        c.close()

        ergebnis ='Ihre Bewertung wurde erfolgreich versendet:)'
    else:    
        ergebnis='Ihre Bewertung konnte leider nicht versendet werden:('

    output = template('danke', ergebnis=ergebnis)
    return output

run(host='localhost', port=8080, debug=True, reloader=True)