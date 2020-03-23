<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Créer compte</title>
</head>
<body>
	<%@ include file="entete.html" %>
	
	<h1>Créer un compte</h1>
	
	 <div id="container">
          
            <form action="" method="post">
   
                
                <label for="pseudo"><b>Pseudo : </b></label>
                <input type="text" id="pseudo" name="pseudo" required>
				<br>

                <label for="name"><b>Nom :</b></label>
                <input type="text" id="name" name="name" required>
				<br>

				<label for="firstname"><b>Prénom :</b></label>
                <input type="text" id="firstname" name="firstname" required>
				<br>
				
				<label for="mail"><b>Email :</b></label>
                <input type="email" id="mail" name="mail" required>
				<br>
				
				<label for="tel"><b>Téléphone :</b></label>
                <input type="tel" id="tel" name="tel">
				<br>
				
				<label for="address"><b>Rue :</b></label>
                <input type="text" id="address" name="address" required>
				<br>
				
				<label for="cpo"><b>Code Postal :</b></label>
                <input type="text"id="cpo" name="cpo" required>
				<br>
				
				<label for="city"><b>Ville :</b></label>
                <input type="text" id="city" name="city" required>
				<br>
				
				<label for="password"><b>Mot de passe :</b></label>
                <input type="password" id="password" name="password" required>
				<br>
				
				<label for="password"><b>Confirmation :</b></label>
                <input type="password" id="password" name="password" required>
				<br>
				
				
				
				<button id="nvCompte" name="nvCompte">
            	Créer
            	</button>

            
            	<button id="annuler" name="annuler">
            	Annuler
            	</button>
            
            </form>
        </div>
	
	<%@ include file="piedDePage.html" %>
	
</body>
</html>