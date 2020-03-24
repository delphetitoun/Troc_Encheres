package fr.eni.serdaigle.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.eni.serdaigle.bll.UtilisateurManager;
import fr.eni.serdaigle.bo.Utilisateur;

/**
 * Servlet implementation class accueil
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private int noUtilisateur;
	private String pseudo;
	private String nom;
	private String prenom;
	private String email;
	private String telephone;
	private String rue;
	private String codePostal;
	private String ville;
	private String motDePasse;
	private boolean administrateur;
	private int credit;
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.setAttribute("pseudo", pseudo);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			UtilisateurManager mger = new UtilisateurManager();
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Utilisateur utilisateur = mger.selectionnerConnexion(username, password);
			if (utilisateur==null) {
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/session.jsp");
				request.setAttribute("errorLogin", "Erreur de saisie Login / MDP, veuillez réessayer");
				rd.forward(request, response);
			}else {
				noUtilisateur = utilisateur.getNoUtilisateur();
				pseudo = utilisateur.getPseudo();
				nom = utilisateur.getNom();
				prenom = utilisateur.getPrenom();
				email = utilisateur.getPrenom();
				codePostal = utilisateur.getCodePostal();
				telephone = utilisateur.getPrenom();
				rue = utilisateur.getPrenom();
				ville = utilisateur.getPrenom();
				motDePasse = utilisateur.getMotDePasse();
				credit = utilisateur.getCredit();
				administrateur = utilisateur.isAdministrateur();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		doGet(request, response);
	}

}
