package com.spring.nikita.main;

import com.spring.nikita.configuration.HibernateConfiguration;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.sql.SQLException;


public class Main {

    public static void main (String[] args) throws SQLException {
        ApplicationContext context = new AnnotationConfigApplicationContext(HibernateConfiguration.class);
//
//        UserService userService = context.getBean(UserService.class);
//        User user = new User();
//        user.setFirstName("Ssdd");
//        user.setLastName("Awwd");
//        user.setLogin("ddssa");
//        user.setPassword("ppoo");
//        user.setPosition("Active");
//        userService.addUser(user);
    }

}
