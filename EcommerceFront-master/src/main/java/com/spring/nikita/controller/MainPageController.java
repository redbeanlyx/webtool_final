package com.spring.nikita.controller;

import com.spring.nikita.model.User;
import com.spring.nikita.service.ProductService;
import com.spring.nikita.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.sql.SQLException;


@Controller()
public class MainPageController extends GetUserName {

    @Autowired
    private ProductService productService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String allProducts(Model model) throws SQLException {


        model.addAttribute("allProducts", productService.getAllProducts());

        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        if (principal instanceof UserDetails) {
            model.addAttribute("userName", super.getUserName());
            //model.addAttribute("userLogin", super.getPrincipal());
            model.addAttribute("id", super.getUserId());
            User user = userService.getUserByLogin(super.getPrincipal());
            model.addAttribute("user", user);


            model.addAttribute("allUsers", userService.getAllUsers());
        }
        return "mainProducts";
    }

    @RequestMapping(value="/search", method =RequestMethod.GET)
    public String searchProduct(@RequestParam("search") String input, Model model){
        model.addAttribute("allProducts", productService.searchProductByInput(input));

        return "mainProducts";
    }


//
//    @RequestMapping(value = "/main/add", method = RequestMethod.GET)
//    public String addProductGet(@ModelAttribute Product product) {
//        return "addProduct";
//    }
//
//
//
//    @RequestMapping(value = "/main/add", method = RequestMethod.POST)
//    public String addProduct(@ModelAttribute Product product, BindingResult result) throws SQLException {
//        if (result.hasErrors()) {
//            return "addProduct";
//        }
//        productService.addProduct(product);
//        return "redirect:/main";
//    }


}
