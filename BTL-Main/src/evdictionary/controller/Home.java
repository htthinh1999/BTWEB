package evdictionary.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import evdictionary.model.DatabaseManager;

/**
 * Servlet implementation class Controller
 */
@WebServlet("/home")
public class Home extends HttpServlet {
    
    static final String url = "index.jsp";
	static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(DatabaseManager.words.size() < DatabaseManager.WordCount()) {
			DatabaseManager.GetData();
		}
		request.setAttribute("wordsFirstCharacter", DatabaseManager.wordsFirstCharacter);
		request.setAttribute("words", DatabaseManager.words);
		System.out.println("Load Sucessfully!!");
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
