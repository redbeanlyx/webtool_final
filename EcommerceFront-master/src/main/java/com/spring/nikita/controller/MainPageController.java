package com.spring.nikita.controller;

import com.spring.nikita.model.User;
import com.spring.nikita.model.Product;
import com.spring.nikita.service.ProductService;
import com.spring.nikita.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import org.springframework.web.bind.annotation.ModelAttribute;

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

    @RequestMapping(value = "/admin/login", method = RequestMethod.GET)
    public String addProduct(Model model) throws SQLException {

        return "adminLogin";
    }

    @RequestMapping(value={"/search"}, method =RequestMethod.GET)
    public String searchProduct(@RequestParam("search") String input, Model model, HttpServletRequest request){

       HttpSession session = request.getSession();
       session.setAttribute("search",input);
       model.addAttribute("allProducts", productService.searchProductByInput(input));
       model.addAttribute("input",input);
        return "mainProducts";
    }

    @RequestMapping(value="/orderbyid", method =RequestMethod.GET)
    public String orderProductsById( Model model,HttpServletRequest request) throws SQLException {


        HttpSession session = request.getSession();
        String search = (String)session.getAttribute("search");


        if(search==null){
            model.addAttribute("allProducts", productService.searchAndOrderById(""));

       }else{
            model.addAttribute("allProducts", productService.searchAndOrderById(search));
        }
        model.addAttribute("input",search);
        return "mainProducts";
    }

    @RequestMapping(value="/orderbyprice", method =RequestMethod.GET)
    public String orderProductsByPrice( Model model,HttpServletRequest request) throws SQLException {


        HttpSession session = request.getSession();
        String search = (String)session.getAttribute("search");


        if(search==null){
            model.addAttribute("allProducts", productService.searchAndOrderByPrice(""));
        }else{
            model.addAttribute("allProducts", productService.searchAndOrderByPrice(search));
        }
        model.addAttribute("input",search);

        return "mainProducts";
    }


    @RequestMapping(value = "/admin/login", method = RequestMethod.POST)
    public String addProductGet(@ModelAttribute Product product) {
        return "addProduct";
    }
//
//
//
    @RequestMapping(value = "/main/add", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute Product product, BindingResult result) throws SQLException {
        if (result.hasErrors()) {
            return "addProduct";
        }
        productService.addProduct(product);
        return "redirect:/main";
    }


}
