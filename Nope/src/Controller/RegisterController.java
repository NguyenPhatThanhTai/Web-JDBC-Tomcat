package Controller;

import Mail.SendMaid;
import Model.MailNumCheck;
import Model.UserModel;
import Service.Implement.UserServiceImplement;
import Service.UserService;
import com.sun.org.apache.regexp.internal.RE;
import jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Random;

@WebServlet(urlPatterns = "/Register")
public class RegisterController extends HttpServlet {
    @Override

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            resp.sendRedirect(req.getContextPath() + "/waiting");
            return;
        }
        req.getRequestDispatcher("View/Client/Register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String Email = req.getParameter("email");
        String Username = req.getParameter("username");
        String PassWord = req.getParameter("pass");
        String Repass = req.getParameter("Repass");

        UserService service = new UserServiceImplement();
        String alert = "";

        if(!Repass.equals(PassWord)){
            alert = "Mật khẩu nhập lại không đúng";
            req.setAttribute("alert", alert);
            req.getRequestDispatcher("/View/Client/Register.jsp").forward(req,resp);
            return;
        }

        if(service.checkExitsUser(Username)){
            alert = "Đã tồn tại tên người dùng này rồi";
            req.setAttribute("alert", alert);
            req.getRequestDispatcher("/View/Client/Register.jsp").forward(req, resp);
            return;
        }

        if(service.checkExitsEmail(Email)){
            alert = "Đã tồn tại Email này rồi";
            req.setAttribute("alert", alert);
            req.getRequestDispatcher("/View/Client/Register.jsp").forward(req, resp);
            return;
        }

        boolean CheckRegister = service.Register(Email, Username, PassWord);
        if(CheckRegister){
                HttpSession session = req.getSession();
                Random rd = new Random();
                int RandNumber = rd.nextInt(700000);
                System.out.println("Ngau nhien "+RandNumber);
                MailNumCheck mailNumCheck = new MailNumCheck();
                mailNumCheck.setId(RandNumber);
                System.out.println("bên register" + mailNumCheck.getId());
                SendMaid.sendMail(Email, "Verify account", "Hello there, this is your number: ( "+RandNumber+" ) to complete register your account");
            resp.sendRedirect(req.getContextPath()+"/MailNumber");
        }else {
            req.getRequestDispatcher("/View/Client/Register.jsp").forward(req, resp);
        }
    }
}
