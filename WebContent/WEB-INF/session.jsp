<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h1>ENI-Enchères</h1>
	
	
	
	 <div id="container">
          
            <form action="" method="post">
   
                
                <label><b>Identifiant : </b></label>
                <input type="text" placeholder="Entrer votre identifiant" name="username" required>

				</br>

                <label><b>Mot de passe :</b></label>
                <input type="password" placeholder="Entrer votre mot de passe" name="password" required>
				</br>

				<input type="button" id="connexion" name="connexion" value="Connexion">
				
				
				<input type="checkbox" id="remember" name="remember" value="Se souvenir de moi">
				<label><b>Se souvenir de moi</b></label>
								
                <a id="ForgotPassword" href="">Mot de passe oublié</a>
            	</br>
            					
            					
				<input type="button" id="creaCompte" name="creaCompte" value="Créer un compte">
            
            
            </form>
        </div>
	

	
	
	
</body>
</html>