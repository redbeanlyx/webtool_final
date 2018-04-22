package com.spring.nikita.dao;

import com.spring.nikita.model.Product;

import java.sql.SQLException;
import java.util.List;

public interface ProductDao {

    void addProduct(Product product) throws SQLException;
    void deleteProduct(Product product) throws SQLException;
    void editProduct(Product product) throws SQLException;
    Product getProduct(int productId) throws SQLException;
    List<Product> getAllProducts() throws SQLException;
    List<Product> searchProductByUserInput(String input);
    List<Product> searchAndOrderById(String input);
    List<Product> searchAndOrderByPrice(String input);
    void addComment(String userName, String content,int productId);

}
