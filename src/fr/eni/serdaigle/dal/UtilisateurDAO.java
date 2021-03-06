package fr.eni.serdaigle.dal;

import java.util.List;

import fr.eni.serdaigle.bo.Utilisateur;
import fr.eni.serdaigle.exception.BusinessException;

public interface UtilisateurDAO {
	void insert(Utilisateur utilisateur) throws BusinessException;

	List<Utilisateur> select() throws BusinessException;
	
	// boolean en retour,  si true le combo pseudo / mdp existe en base de donnée
	Utilisateur selectConnexion(String identifiant, String password) throws BusinessException;

}
