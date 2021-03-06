package com.spring.nikita.dao;


import com.spring.nikita.model.User;

import java.sql.SQLException;
import java.util.List;

public interface UserDao {

    User getUserById(int id) throws SQLException;
    User getUserByLogin(String login) throws SQLException;
    void addUser(User user)throws SQLException;
    void editUser(User user) throws SQLException;
    void deleteUser(User user) throws SQLException;
    List<User> getAllUsers() throws SQLException;
//    User getUserByNameAndPassword(String username, String password);
boolean isAdmin(String username, String password);
}
