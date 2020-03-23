<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
</head>
<body>
	<h1>ENI-Enchères</h1>
	<a href="<%=request.getContextPath()%>/session.jsp">S'inscrire - se connecter</a>

 <div id="container">
          
          <h1>FILTRES :</h1>
            <form action="" method="post">
   
                
                <label for="categories">Catégories : </label>
                <select name="categories" size="1">
					<optgroup label="Categories">
						<option value="toutes" selected="selected">Toutes</option>
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>
						<option value=""></option>
					
					</optgroup>
					</select>
				<br>
				

				<input type="text" placeholder="Le nom de l'article contient" id="nomArticle" name="nomArticle">
				
            	<br>				
            					
				<label for="research">
				<input type="button" id="research" name="research" value="Rechercher">
				</label>
                <br>
            
            
            </form>
        </div>

</body>
</html>