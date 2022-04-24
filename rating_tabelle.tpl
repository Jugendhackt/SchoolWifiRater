 <!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Schulen</title>
<style type= "text/css">
body {font-family: Arial;}
body {background-color: #C0C0C0;}
.button {
	box-sizing: content-box;
    height: 3em;
}
@media screen and (max-width: 45em) {
	tr, th, td {
 		display: block;
	}
	
	tr {
		padding: 1em;
		border-top: 0 none;
	}
	
	th {
		padding: 0;
	}
	
	td {
		padding: 1em 0 0;
	}
}
</style>
</head>
<body>

<h1>Ranking Liste</h1>
<br>
 <a href="/rating">
        <input type="button" value="Bewertung abgeben" class="button">
    </a>
 <br>
 <br>
<table border="1" cellspacing="1" cellpadding="20">
    <tr>
      <th>Platz</th>
      <th>Name</th>
      <th>Sterne</th>
      <th>Rating</th>
    </tr>
	% i = 0
	% for school in result:	
	% i= i + 1
	<tr>
		<td>{{i}}</td>
		<td>{{school[0]}}</td>
		<td>	
			% for j in range(int(school[1])):
				⭐
			% end
		</td>
		<td>{{school[1]}}</td>
	</tr>
	% end
  </table>
<br>
<p>Made by Mattes Beernink, Merlin T. Feig, Kirill Galant<p>
</body>
</html> 