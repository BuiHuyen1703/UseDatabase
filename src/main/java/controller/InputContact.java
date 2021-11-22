package controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Contact;
/**
 * Servlet implementation class InputContact
 */
@WebServlet("/InputContact")
public class InputContact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InputContact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 RequestDispatcher requestDispatcher =getServletContext().getRequestDispatcher("/view/input.jsp");
		 requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("DatabaseTest") ;
		EntityManager em = factory.createEntityManager();
		em.getTransaction().begin();
		Contact sv = new Contact();
		sv.setName(name);
		sv.setTel(tel);
		em.getTransaction().commit();
		response.sendRedirect("InputContact");
	}

}
