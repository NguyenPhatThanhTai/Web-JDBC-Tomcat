package Controller;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/Welcome")
public class WelcomeController extends HttpServlet {
//    ProductService productService = new ProductServiceImpl();
//    CategoryService cateService = new CategoryServiceImpl();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        List<Product> productList = productService.getAll();
//        req.setAttribute("pwelcome", productList);
        req.getRequestDispatcher("/View/Client/index.jsp").forward(req, resp);
    }
}
