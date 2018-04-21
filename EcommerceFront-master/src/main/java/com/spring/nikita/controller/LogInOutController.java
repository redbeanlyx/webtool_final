package com.spring.nikita.controller;

import com.spring.nikita.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;

@Controller()
public class LogInOutController extends GetUserName {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
    public String accessDeniedPage(ModelMap model) throws SQLException {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            model.addAttribute("userName", super.getUserName());
        }
        return "accessDenied";
    }


    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage(HttpServletRequest request, HttpServletResponse response) {

        return "login";
    }

//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String loginPage2(HttpServletRequest request, HttpServletResponse response) {
//
//        return "addProduct";
////        String username = request.getParameter("login");
////        String password = request.getParameter("password");
////        System.out.println(username+"haha"+password);
////        System.out.println("test1");
////        if(userService.isAdmin(username,password)){
////            System.out.println("test2");
////            return "addProduct";
////        }
////
////        return "login";
//    }


    @RequestMapping(value = "/logout", method = RequestMethod.POST)
    public String logOut(HttpServletRequest request, HttpServletResponse response) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null) {
            new SecurityContextLogoutHandler().logout(request, response, authentication);
        }
        return "redirect:/";
    }

}
