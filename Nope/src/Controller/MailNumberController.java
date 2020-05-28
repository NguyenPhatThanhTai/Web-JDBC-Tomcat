package Controller;

import Mail.SendMaid;
import Model.MailNumCheck;
import Model.UserModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@WebServlet(urlPatterns = "/MailNumber")
public class MailNumberController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
            req.getRequestDispatcher("/View/Client/Check.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int number = Integer.parseInt(req.getParameter("MailNumber"));
        HttpSession session = req.getSession();
        MailNumCheck mailNumCheck = new MailNumCheck();
        String alert = "";

        if(number == mailNumCheck.getId()){
            alert = "Sai mã số, vui lòng kiểm tra lại";
            session.setAttribute("alert", alert);
            req.getRequestDispatcher("/View/Client/Check.jsp").forward(req, resp);
        }else {
            req.getRequestDispatcher("/View/Client/Login.jsp").forward(req, resp);
        }
    }
}
