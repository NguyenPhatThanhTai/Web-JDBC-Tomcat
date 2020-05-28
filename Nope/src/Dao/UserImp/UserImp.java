package Dao.UserImp;

import Dao.UserDao;
import JDBC.JDBCConected;
import Model.UserModel;
import jbcrypt.BCrypt;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserImp extends JDBCConected implements UserDao {
    @Override
    public void insert(UserModel user) {
    int roleId = 0;
    String sql ="INSERT INTO [User](email, username, password, role_id, CheckMail) VALUES (?,?,?,?,?)";
        Connection conn =super.getJDBCConnection();
        String HashUserName = BCrypt.hashpw(user.getPassWord(), BCrypt.gensalt(12));
        System.out.println(HashUserName);
        try{
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1,user.getEmail());
            ps.setString(2, user.getUserName());
            ps.setString(3, HashUserName);

            try{
                if(user.getRoleID() == 1){
                    roleId = 1;
                }
                else {
                    roleId = 2;
                }

            }catch (Exception e){
                roleId = 2;
            }
            ps.setInt(4,roleId);
            ps.setInt(5,2);
            ps.executeUpdate();
            ps.close();
            //SQLException khác với Exception=======================
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void edit(UserModel user) {

    }

    @Override
    public void delete(int id) {

    }

    @Override
    public UserModel get(String userName) {
        String sql = "SELECT * FROM [User] WHERE username = ? ";
        Connection con = super.getJDBCConnection();
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, userName);
            ResultSet rs = ps.executeQuery();

            while (rs.next()){
                UserModel user = new UserModel();

                user.setId(rs.getString("id"));
                user.setEmail(rs.getString("email"));
                user.setUserName(rs.getString("username"));
                user.setPassWord(rs.getString("password"));
                user.setRoleID(Integer.parseInt(rs.getString("role_id")));
                user.setCheckMail(Integer.parseInt(rs.getString("CheckMail")));
                return user;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public UserModel get(int id) {
        String sql = "select * from [User] where id = ?";
        Connection con = super.getJDBCConnection();

        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if(rs.next()){
                UserModel user = new UserModel();

                user.setId(rs.getString("id"));
                user.setEmail(rs.getString("email"));
                user.setUserName(rs.getString("username"));
                user.setPassWord(rs.getString("password"));
                user.setRoleID(Integer.parseInt(rs.getString("role_id")));
                return user;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return null;
    }

    @Override
    public List<UserModel> getAll() {
        return null;
    }

    @Override
    public List<UserModel> search(String userName) {
        return null;
    }

    @Override
    public boolean checkExistEmail(String email) {
        boolean duplicate = false;
        Connection conn = super.getJDBCConnection();
        try{
            String sql = "select * from [User] where email = ?";

            PreparedStatement PS = conn.prepareStatement(sql);

            PS.setString(1,email); // set String là set vào dấu ? kia

            ResultSet RS = PS.executeQuery();

            if(RS.next()){
                duplicate = true;
            }
            PS.close();
            conn.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return duplicate;
    }

    @Override
    public boolean checkExistUserName(String userName) {
        boolean duplicate = false;
        Connection conn = super.getJDBCConnection();
        try{
            String sql = "select * from [User] where username = ?";

            PreparedStatement PS = conn.prepareStatement(sql); // chuẩn bị câu lệnh SQL

            PS.setString(1,userName); // đưa tham số userName vào ?

            ResultSet RS = PS.executeQuery(); // thực hiện câu lệnh

            if(RS.next()){ // .next là nếu có dữ liệu đó trong database
                return true;
            }

            PS.close();
            conn.close();

        }catch (SQLException e){
            e.printStackTrace();
        }
        return duplicate;
    }

    public void updateMail(UserModel user) {
        String sql = "UPDATE [User] SET CheckMail = ? WHERE id = ?";
        Connection con = super.getJDBCConnection();

        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, 1);
            ps.setString(2, user.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
