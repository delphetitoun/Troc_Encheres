<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nouvelle vente</title>
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/4-col-portfolio.css"
	rel="stylesheet">
</head>
<body>

	<div id="container">

		<div class="col-lg-6 col-sm-12">
			<%@ include file="entete.html"%>
		</div>

		<div class="col-lg-6 col-sm-12">

			<form action="login" method="post">

				<div>
					<label for="username"><b>Article : </b></label> <input type="text"
						placeholder="Entrer le nom de l'article" id="username"
						name="username" required>

				</div>

				<div>
					<label for="password"><b>Catégorie :</b></label> <select
						name="my_html_select_box">
						<option>Multimédia</option>
						<option>Loisirs</option>
						<option>Mode</option>
					</select>
				</div>

				<div>
					<label for="password"><b>Description :</b></label><br>
					<textarea id="story" name="story" rows="5" cols="33">Entrer la description de l'article</textarea>
				</div>

				<div>
					<label for="avatar"><b>Photo de l'article</b></label> 
					<input type="file" id="photoArticle" name="photoArticle"
						accept="image/png, image/jpeg">

				</div>

				<label for="quantity"><b>Prix initial :</b></label> 
				<input type="number" id="prixArticle" name="prixArticle" min="1"
					max="10000">
		</div>





	
		</div>
	
			
				<button id="enregistrerVente" name="enregistrerVente">Enregistrer</button>
				<button id="annulerVente" name="annulerVente">Annuler</button>
			
	
		</div>


	</form>
	</div>
	</div>


	<%@ include file="piedDePage.html"%>

</body>
</html>