<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil</title>
<!-- Bootstrap core CSS -->
<link
	href="<%=request.getContextPath()%>/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/css/4-col-portfolio.css"
	rel="stylesheet">

</head>
<body>

	<div id="container">
		<div class="row">
			<div class="col-lg-6 col-sm-12">
				<%@ include file="entete.html"%>
			</div>
			<div class="col-lg-6 col-sm-12">
				<a href="<%=request.getContextPath()%>/session.jsp">S'inscrire -
					se connecter</a>
			</div>

			<!-- Page Heading -->

			<h3 class="my-4 col-lg-12 col-sm-12">
				Filtres :
				</h1>



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