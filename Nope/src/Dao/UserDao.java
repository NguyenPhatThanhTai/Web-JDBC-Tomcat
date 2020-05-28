package Dao;

import Model.UserModel;

import java.io.Serializable;
import java.util.List;

public interface UserDao {
    void insert(UserModel user);

    void edit(UserModel user);

    void delete(int id);

    UserModel get(String userName);

    UserModel get (int id);

    List<UserModel> getAll();

    List<UserModel> search(String userName);

    boolean checkExistEmail (String email);

    boolean checkExistUserName (String userName);

}
