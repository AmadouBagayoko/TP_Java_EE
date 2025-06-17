package packageServlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  HttpSession session = request.getSession();
		 if (session.getAttribute("listeUsers") == null) {
		        session.setAttribute("listeUsers", new ArrayList<User>());
		    }
		this.getServletContext().getRequestDispatcher("/WEB-INF/userForm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom = request.getParameter("nom");
		String email = request.getParameter("email");
		// Stocker l'utilisateur courant en session
		HttpSession session = request.getSession();
		  // Créer l'utilisateur
		User user= new User(nom,email);
		// Liste des utilisateurs enregistrés
		List<User> liste = (List<User>) session.getAttribute("listeUsers");
		if(liste==null)
		{liste = new ArrayList<>();
				
		}
		liste.add(user);
		 // Enregistrer dans la session
		session.setAttribute("user", user);
		session.setAttribute("listeUsers",liste);
		//Redirection vers la page détails
		this.getServletContext().getRequestDispatcher("/WEB-INF/userDetails.jsp").forward(request, response);
	}

}
