package Service.Implement;

import Dao.UserImp.UserImp;
import Model.UserModel;
import Service.UserService;
import jbcrypt.BCrypt;

import java.util.List;

public class UserServiceImplement implements UserService {
    UserImp UI = new UserImp();
    @Override
    public void Insert(UserModel UM) {
        UI.insert(UM);
    }

    @Override
    public void Delete(int id) {
        UI.delete(id);
    }

    @Override
    public void Edit(UserModel UM) {
        UI.edit(UM);
    }

    @Override
    public UserModel Get(String UserName) {
        return UI.get(UserName);
    }

    @Override
    public UserModel Get(int id) {
        return UI.get(id);
    }

    @Override
    public UserModel Login(String UserName, String PassWord) {
        UserModel UM = UI.get(UserName);
        if(UM != null && BCrypt.checkpw(PassWord, UM.getPassWord())){
            return UM;
        }
        return null;
    }

    @Override
    public boolean Register(String Email, String UserName, String Password) {
        if(UI.checkExistUserName(UserName)) {
            return false;
        }
            UI.insert(new UserModel(Email, UserName, Password));
        return true;
    }

    @Override
    public List<UserModel> GetAll() {
        return null;
    }

    @Override
    public List<UserModel> Search(String keyworld) {
        return null;
    }

    @Override
    public boolean checkExitsEmail(String email) {
        if(UI.checkExistEmail(email)){
            return true;
        }
        return false;
    }

    @Override
    public boolean checkExitsUser(String UserName) {
        if (UI.checkExistUserName(UserName)){
            return true;
        }
        return false;
    }

    public void updateMail(UserModel user) {
        UI.updateMail(user);
    }
}
