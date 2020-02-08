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

@WebServlet("/XuLyDangNhap")
public class XuLyDangNhap extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public XuLyDangNhap() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException // các định nghĩa của servelet
    {
        String username= request.getParameter("username"); // dùng để lấy thông số trích xuất từ html thẻ name bên html
        String pass = request.getParameter("pass");

        KhachHang kh = new KhachHangDao().layThongTinTaiKhoan(username);
        System.out.println(kh); //dùng để setAttribute ở dưới
        if(new KhachHangDao().kiemTraDangNhap(username, pass)) // gọi đến hàm kiểm tra đăng nhập
        {
            //khi kiểm tra thành công
            HttpSession session = request.getSession(); // khởi tạo hàm chuyển hướng
            session.setAttribute("user", kh); // hàm chuyển hướng đến người dùng đó khi đăng nhập thành công
            response.sendRedirect("DaDangNhap.jsp"); // chuyển hướng đến trang chính
        }else{
            System.out.println("Loi dang nhap");
            HttpSession session = request.getSession(); // khởi tạo hàm chuyển hướng

            response.sendRedirect("Error.jsp"); // chuyển hướng đến trang lỗi

        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
