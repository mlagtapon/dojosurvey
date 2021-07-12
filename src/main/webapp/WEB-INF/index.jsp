<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body {
		display: flex;
		justify-content: center;
	}
	
	form {
		padding: 20px;
		background-color: salmon;
	}
	
	.spaces {
		display: flex;
		justify-content: space-between;
	}
</style>
<meta charset="ISO-8859-1">
<title>Dojo Survey</title>
</head>
<body>
	<form method="POST" action="/submit">
		<div class="spaces">Your Name: <input type="text" name="name"></div><br>

        <div class="spaces">Dojo Location:
            <input list="dojo_location" name="location">
            <datalist id="dojo_location">
                <option value="Dallas"></option>
                <option value="Chicago"></option>
                <option value="Tulsa"></option>
                <option value="San Jose"></option>
                <option value="Bellevue"></option>
                <option value="Boise"></option>
                <option value="Arlington"></option>
                <option value="LA"></option>
                <option value="Oakland"></option>
                <option value="Orange County"></option>
            </datalist></div><br/>

       <div class="spaces">Favorite Language:
       	<input list="language" name="language">
        	<datalist id="language">
             	<option value="Python"></option>
                <option value="Java"></option>
                <option value="C"></option>
                <option value="Ruby"></option>
                <option value="C#"></option>
                <option value="PHP"></option>
                <option value="JavaScript"></option>
       </datalist></div><br/>
            
            <label for="comment">Comment (optional):</label><br>
            <textarea id="comment" name="comment" rows="5" cols="50">
                Hello
            </textarea><br>
		<button>Submit</button>
	</form>
</body>
</html>