package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Dao.KhachHangDao;
import Module.KhachHang;
@WebServlet("/XuLyDangKy")
public class XuLyDangKy extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public XuLyDangKy() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException // throws là xử lý ngoại lệ của cái Servlet
    {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String username= request.getParameter("username");
        String pass= request.getParameter("pass");
        String name= request.getParameter("name");

        KhachHang kh1 = new KhachHang(username,pass,name);
        KhachHang kh = new KhachHangDao().layThongTinTaiKhoan(username);

        if(new KhachHangDao().kiemTraDangKy(username))
        {
            HttpSession session = request.getSession(); // khởi tạo hàm chuyển hướng
            session.setAttribute("name", kh); // hàm chuyển hướng đến người dùng đó khi đăng nhập thành công
            response.sendRedirect("loidangki.jsp");
        }else
        {
            new KhachHangDao().themTaiKhoan(kh1);
            response.sendRedirect("DangNhap.jsp");
        }



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
