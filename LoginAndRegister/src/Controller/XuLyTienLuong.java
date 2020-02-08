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
@WebServlet("/XuLyTienLuong")
public class XuLyTienLuong extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public XuLyTienLuong() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException // throws là xử lý ngoại lệ của cái Servlet
    {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        KhachHang kh = new KhachHang();

        if(new KhachHangDao().TienLuong(kh))
        {
//			HttpSession session = request.getSession();
//			session.setAttribute("user", kh);
            response.sendRedirect("DangNhap.jsp");
        }else{
            System.out.println("Lỗi đăng kí");
        }



    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
