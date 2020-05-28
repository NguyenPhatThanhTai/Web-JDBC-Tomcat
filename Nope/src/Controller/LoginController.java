package Controller;

import Model.UserModel;
import Service.Implement.UserServiceImplement;
import Service.UserService;
import jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/Login")
public class LoginController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        if (session != null && session.getAttribute("account") != null) {
            resp.sendRedirect(req.getContextPath() + "/waiting");
            return;
        }
        req.getRequestDispatcher("View/Client/Login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("pass");

//        String HashUserName = BCrypt.hashpw(password, BCrypt.gensalt(12));
        System.out.println(password);

        String alertMsg = "Checking . . .";
        req.setAttribute("alert", alertMsg);

        if (username.isEmpty() || password.isEmpty()) {
            alertMsg = "Username and password can't be empty!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/View/Client/Login.jsp").forward(req, resp);
            return;
        }

        UserService service = new UserServiceImplement();

        UserModel user = service.Login(username, password); // truyền 2 tham số username và password qua bên login
        if (user != null) {
            HttpSession session = req.getSession(true);
            session.setAttribute("account", user);
            if (user.getCheckMail() == 2){
                resp.sendRedirect(req.getContextPath() + "/MailNumber");
            }
            resp.sendRedirect(req.getContextPath() + "/waiting");
        } else {
            alertMsg = "Username or password isn't correct";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/View/Client/Login.jsp").forward(req, resp);
        }
    }
}
