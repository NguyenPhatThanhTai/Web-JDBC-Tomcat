package Controller;

import Model.UserModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(urlPatterns = "/waiting")
public class PhanQuyenController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession HS = req.getSession();
            if(HS != null && HS.getAttribute("account") != null){
                UserModel UM = (UserModel) HS.getAttribute("account");
                req.setAttribute("username", UM.getUserName());
                if(UM.getRoleID() == 1){
                        resp.sendRedirect(req.getContextPath()+"/Admin");
                    }
                    if(UM.getRoleID() == 2){
                        resp.sendRedirect(req.getContextPath()+"/Page1");
                    }
            }
            else {
                resp.sendRedirect(req.getContextPath()+"/Login");
            }
    }
}
