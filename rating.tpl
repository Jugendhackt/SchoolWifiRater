<!DOCTYPE html>
<html>
<head>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Schul Wifi Rating</title>
<style type= "text/css">
body {font-family: Arial;}
body {background-color: #C0C0C0;}
.button {
  box-sizing: content-box;
  height: 3em;
}

</style>
</head>

<body>
<h1>Schul Wifi Rating</h1>
<br>
<form action="/receive" method="GET" id="">

   <label for="schools">Wählen sie die Schule:</label>

    <select name="schools" id="schools" required >
     <option value="" >Bitte wählen!</option>
     <option>Hogwarts</option>
     <option>Beauxbatons</option>
     <option>Manos</option>
     <option>Pipi-Langstrumpf-Schule</option>
     <option>Peter-Pan-Schule</option>
     <option>Gymnasium Dresden-Pieschen</option>
     <option>Jugend hackt! Gymnasium Dresden</option>
     <option>Rick Astley Schule</option>
     <option>Gymnasium Dresden-Cotta</option>
     <option>Semper-Gymnasium</option>
    </select> 
  <p>Wie gut ist das W-Lan an der ausgewählten Schule?</p>
  <fieldset required>
    <input type="radio" id="a" name="Sterne" value="1" required>
    <label for="a">⭐</label> 
    <br>
    <input type="radio" id="b" name="Sterne" value="2" required>
    <label for="b">⭐⭐</label> 
    <br>
    <input type="radio" id="c" name="Sterne" value="3" required>
    <label for="c">⭐⭐⭐</label>
    <br>
    <input type="radio" id="d" name="Sterne" value="4" required>
    <label for="d">⭐⭐⭐⭐</label>
    <br> 
    <input type="radio" id="e" name="Sterne" value="5" required>
    <label for="e">⭐⭐⭐⭐⭐</label>
    <br> 
  </fieldset>
  <br>
  <input type="submit" name="Bewertung" value="Bewertung bestätigen" class="button">
</form>
<br>
<p>Made by Mattes Beernink, Merlin T. Feig, Kirill Galant<p>
</body>

</html>
