<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<%@ include file="entete.html" %>
	
	
	
	 <div id="container">
          
            <form action="" method="post">
   
                
                <label for="username"><b>Identifiant : </b></label>
                <input type="text" placeholder="Entrer votre identifiant" id="username" name="username" required>

				<br>

                <label for="password"><b>Mot de passe :</b></label>
                <input type="password" placeholder="Entrer votre mot de passe" id="password" name="password" required>
				<br>

				
				<button id="connexion" name="connexion">
            	Connexion
            	</button>
				
				
				<input type="checkbox" id="remember" name="remember" value="remember">
				<label for="remember" ><b>Se souvenir de moi</b></label>
								
                <a id="ForgotPassword" href="">Mot de passe oublié</a>
            	<br>
            					
            
            	<button id="creaCompte" name="creaCompte">
            	Créer un compte
            	</button>
            
            </form>
        </div>
	

	
	<%@ include file="piedDePage.html" %>
	
</body>
</html>