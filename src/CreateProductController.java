import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addProductController
 */
@WebServlet("/CreateProductController")
public class CreateProductController extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			ProductBean product = new ProductBean();
			
			int product_id = Integer.parseInt(request.getParameter("product_id"));
			double product_price = Double.parseDouble(request.getParameter("product_price"));
			int product_count = Integer.parseInt(request.getParameter("product_count"));
			//kena cari jugak cara nak access admind id   
			product.setProductID(product_id);
			product.setProductName(request.getParameter("product_name"));
			product.setProductDesc(request.getParameter("product_description"));
			product.setProductPrice(product_price);
			product.setProductCount(product_count);
			product.setAdminID(1);
			
			ProductDAO.createProduct(product);
			response.sendRedirect("addProduct.jsp");
		}	catch(Throwable ex) {
			System.out.println(ex);
		}
	}

}
