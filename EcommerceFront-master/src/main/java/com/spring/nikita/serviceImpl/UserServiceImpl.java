package com.spring.nikita.serviceImpl;

import com.spring.nikita.dao.UserDao;
import com.spring.nikita.model.User;
import com.spring.nikita.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;


@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;


    public User getUserById(int id) throws SQLException {
        return userDao.getUserById(id);
    }

    public User getUserByLogin(String login) throws SQLException {
        return userDao.getUserByLogin(login);
    }

    public void addUser(User user) throws SQLException {
        userDao.addUser(user);
    }

    public void editUser(User user) throws SQLException {
        userDao.editUser(user);
    }

    public void deleteUser(User user) throws SQLException {
        userDao.deleteUser(user);
    }

    public List<User> getAllUsers() throws SQLException {
        return userDao.getAllUsers();
    }

    public boolean isAdmin(String username, String password){
        if(userDao.isAdmin(username,password)){
             return true;
        }
        return false;
    }
}
