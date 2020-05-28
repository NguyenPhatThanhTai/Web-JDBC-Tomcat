package Service;

import Model.UserModel;

import java.util.List;

public interface UserService {
    void Insert(UserModel UM);

    void Delete(int id);

    void Edit(UserModel UM);

    UserModel Get(String UserName);

    UserModel Get(int id);

    UserModel Login(String UserName, String PassWord);

    boolean Register(String Email, String UserName, String Password);

    List<UserModel> GetAll();

    List<UserModel> Search(String keyworld);

    boolean checkExitsEmail (String email);

    boolean checkExitsUser (String UserName);
}
