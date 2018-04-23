package com.spring.nikita.serviceImpl;

import com.spring.nikita.dao.ProductDao;
import com.spring.nikita.model.Product;
import com.spring.nikita.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.SQLException;
import java.util.List;


@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    public void addProduct(Product product) throws SQLException {
        productDao.addProduct(product);
    }

    public void deleteProduct(Product product) throws SQLException {
        productDao.deleteProduct(product);
    }

    public void editProduct(Product product) throws SQLException {
        productDao.editProduct(product);
    }

    public Product getProduct(int productId) throws SQLException {
        return productDao.getProduct(productId);
    }

    public List<Product> getAllProducts() throws SQLException {
        return productDao.getAllProducts();
    }

    public List<Product> searchProductByInput(String input){
        return productDao.searchProductByUserInput(input);
    }

    public List<Product> searchAndOrderById(String input){
        return productDao.searchAndOrderById(input);
    }
    public List<Product> searchAndOrderByPrice(String input){
        return productDao.searchAndOrderByPrice(input);
    }
    public void addComment(String userName, String content, int productId,int star){
         productDao.addComment(userName,content,productId,star);
    }

}
