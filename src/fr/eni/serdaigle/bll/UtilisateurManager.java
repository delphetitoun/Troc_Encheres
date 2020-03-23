package fr.eni.serdaigle.bll;

import fr.eni.serdaigle.dal.DAOFactory;
import fr.eni.serdaigle.dal.UtilisateurDAO;

import fr.eni.serdaigle.exception.BusinessException;
import fr.eni.serdaigle.bo.Utilisateur;

public class UtilisateurManager {
	private UtilisateurDAO utilisateurDAO;
	private static final int CHAMPS_VARCHAR_30 = 30;
	private static final int CHAMPS_VARCHAR_20=20;
	private static final int CHAMPS_VARCHAR_15=15;
	private static final int CHAMPS_VARCHAR_10=10;
	
	public UtilisateurManager() {
		utilisateurDAO = DAOFactory.getUtilisateurDAO();
	}
	
	public Utilisateur ajouterUtilisateur()throws BusinessException{
		BusinessException be = new BusinessException();
		//valider les champs
		
		Utilisateur utilisateur = null;
		
		if(!be.hasErreurs()) {
			utilisateur = new Utilisateur();
			utilisateur.set...();
			

			utilisateurDAO.insert(utilisateur);
		}else {
			throw be;
		}
		return utilisateur;
	}

	public boolean selectionnerConnexion(String identifiant, String password) throws BusinessException{
		return utilisateurDAO.selectConnexion(identifiant, password);
	}
	
	public Utilisateur selectionnerUtilisateur(int id) throws BusinessException{
		return utilisateurDAO.select(id);
	}
	
	public Utilisateur validerChamps(String champs, int varchar, BusinessException be) {
		
	}
	
}
