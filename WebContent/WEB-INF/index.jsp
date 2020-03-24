<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
<!-- Bootstrap core CSS -->
<link
	href="${pageContext.request.contextPath}/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="${pageContext.request.contextPath}/css/4-col-portfolio.css"
	rel="stylesheet">

</head>
<body>

	<!-- ${request.getAttribute} -->

	<div id="container">
		
			<div class="col-lg-6 col-sm-12">
				<%@ include file="entete.html"%>
			</div>
			
			<div class="col-lg-6 col-sm-12">
				<c:if test="${utilisateur == null}"> 
					<a href="connexion">S'inscrire - se connecter</a>
				</c:if>	
			</div>

			<div class="col-lg-6 col-sm-12">
				<a href="${pageContext.request.contextPath}/.jsp">Vendre un article</a> 
				<a href="${pageContext.request.contextPath}/.jsp">Mon profil</a> 
				
				<c:if test="${utilisateur != null}"> 
					<a href="${pageContext.request.contextPath}/.jsp">Déconnexion</a>
				</c:if>
			</div>
			
			<div class="col-lg-6 col-sm-12">
				<p>${utilisateur.pseudo} est connectée</p>
			</div>


			<!-- Page Heading -->
			
			<h3 class="my-4 col-lg-12 col-sm-12">Filtres :</h3>
			
			<div class="col-lg-6 col-sm-12">
				<input type="radio" id="filtre" name="filtre" value="buy" checked> 
				<label for="filtre"><b>Achats</b><br></label>
					
					<input type="checkbox" id="buy" name="buy" value="open"> 
					<label for="buy"><b>enchères ouvertes</b></label> <br>
					
					<input type="checkbox" id="buy" name="buy" value="current"> 
					<label for="buy"><b>mes enchères en cours</b></label><br>
					
					<input type="checkbox" id="buy" name="buy" value="win"> 
					<label for="buy"><b>mes enchères remportées</b></label><br>
				
				<input type="radio" id="filtre" name="filtre" value="sales"> 
				<label for="filtre"><b>Mes ventes</b><br></label>
					
					<input type="checkbox" id="sales" name="sales" value="currentsales"> 
					<label for="sales"><b>mes ventes en cours</b></label><br> 
					
					<input type="checkbox" id="sales" name="sales" value="upcommingsales"> 
					<label for="sales"><b>ventes non débutées</b></label><br>
					
					<input type="checkbox" id="sales" name="sales" value="closesales"> 
					<label for="sales"><b>ventes terminées</b></label><br>
				
			</div>

			<div class="col-lg-6 col-sm-12">


				<form action="" method="post">


					<label for="categories">Catégories : </label> <select
						name="categories" size="1">
						<optgroup label="Categories">
							<option value="toutes" selected="selected">Toutes</option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>
							<option value=""></option>

						</optgroup>
					</select> <br> <input type="text"
						placeholder="Le nom de l'article contient" id="nomArticle"
						name="nomArticle"> <br>


					<button class="col-lg-2 h-25" id="research" name="research">
						Rechercher</button>

					<br>


				</form>

			</div>
	
	</div>




		<%@ include file="piedDePage.html"%>
</body>
</html>