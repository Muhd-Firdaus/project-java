

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProductController")
public class DeleteProductController extends HttpServlet {
	private static String LIST_ALL = "/viewProduct.jsp";
	private ProductDAO dao;
	String forward = "";
	
	public DeleteProductController() {
		super();
		dao = new ProductDAO();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("delete")) {
			int product_id = Integer.parseInt(request.getParameter("productid"));
			dao.deleteProduct(product_id);
			forward = LIST_ALL;
			request.setAttribute("productList", dao.getAll());
		}
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
	

}
