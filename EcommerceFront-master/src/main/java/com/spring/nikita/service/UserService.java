package com.spring.nikita.service;

import com.spring.nikita.model.User;

import java.sql.SQLException;
import java.util.List;


public interface UserService {

    User getUserById(int id) throws SQLException;
    User getUserByLogin(String login) throws SQLException;
    void addUser(User user)throws SQLException;
    void editUser(User user) throws SQLException;
    void deleteUser(User user) throws SQLException;
    List<User> getAllUsers() throws SQLException;
    boolean isAdmin(String username, String password);
}
