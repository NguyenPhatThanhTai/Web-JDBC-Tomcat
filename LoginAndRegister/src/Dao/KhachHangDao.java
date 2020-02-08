package Dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Module.KhachHang;
import Module.MyConectDP;
import Module.TienLuong;

public class KhachHangDao implements ObjectDao{

    @Override
    public boolean themTaiKhoan(Object obj) {
        KhachHang kh = (KhachHang) obj;
        try {
            new MyConectDP().thucThiSQL("insert into DangNhap values('"+kh.getUserName()+"','"+kh.getPass()+"','"+kh.getName()+"')");
            return true;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }

    public KhachHang layThongTinTaiKhoan(String username){
        try {
            ResultSet  rs = new MyConectDP().chonDuLieu("select * from DangNhap where UserName='"+username+"'");
            while(rs.next()){
                String user = rs.getString(1);
                String pass = rs.getString(2);
                String name = rs.getString(3);
                return new KhachHang(user,pass,name);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return null;

    }

    @Override
    public boolean kiemTraDangNhap(String username,String pass) {

        try {
            ResultSet  rs = new MyConectDP().chonDuLieu("select * from DangNhap where UserName='"+username+"'");
            while(rs.next())
            {
                if(rs.getString(1).equals(username) && rs.getString(2).equals(pass))
                {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }


        return false;
    }

    public boolean kiemTraDangKy(String username) {

        try {
            ResultSet  rs = new MyConectDP().chonDuLieu("select * from DangNhap where UserName='"+username+"'");
            while(rs.next())
            {
                if(rs.getString(1).equals(username))
                {
                    return true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }


        return false;
    }



    public boolean TienLuong(Object obj) {
        KhachHang kh = (KhachHang) obj;
        try {
            new MyConectDP().thucThiSQL("select * from TienLuong where TenNV = '"+kh.getUserName()+"'");
            return true;
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
    }
    KhachHang kh = new KhachHang();
    public ArrayList<TienLuong> getList(){
        ArrayList<TienLuong> list= new ArrayList<>();
        try {
            ResultSet  rs = new MyConectDP().chonDuLieu("select * from TienLuong where TenNV = '"+ KhachHang.getUserName()+"'");
            // luôn luôn set static khi gọi tên như ở trên để xem tiền lương của ng đó thôi
            while(rs.next()){
                TienLuong e = new TienLuong();
                e.setTenNV(rs.getString("TenNV"));
                e.setTienLuong(rs.getFloat("TienLuong"));
                list.add(e);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }



    public static void main(String[] args) {
        KhachHang kh = new KhachHang("lephong", "abcd", "Phong");
//		System.out.println(new KhachHangDAO().themTaiKhoan(kh));
        System.out.println(new KhachHangDao().kiemTraDangNhap("lephong", "abcd"));
    }
}
