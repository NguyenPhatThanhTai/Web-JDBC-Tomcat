package Controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/DangXuat")
public class DangXuat extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DangXuat() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException // vẫn là xử lý ngoại lệ
    {
        HttpSession session = request.getSession(false);
        session.invalidate();
        response.sendRedirect("DangNhap.jsp");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
