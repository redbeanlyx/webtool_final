package com.spring.nikita.daoImpl;

import com.spring.nikita.dao.ProductDao;
import com.spring.nikita.model.Product;
import com.spring.nikita.model.Comment;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product) throws SQLException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.save(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }


    public void deleteProduct(Product product) throws SQLException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.delete(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }


    public void editProduct(Product product) throws SQLException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.update(product);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }

    public List<Product> searchProductByUserInput(String input){
        List<Product> products = null;
        Session session = null;
        try {
            session = sessionFactory.openSession();
            products = session.createCriteria(Product.class).add(Restrictions.ilike("productBrand","%"+input+"%")).list();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return products;
    }

    public List<Product> searchAndOrderById(String input){
        List<Product> products = null;
        Session session = null;
        try {
            session = sessionFactory.openSession();
            products = session.createCriteria(Product.class).add(Restrictions.ilike("productBrand","%"+input+"%")).addOrder(Order.asc("productId")).list();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return products;
    }
    public List<Product> searchAndOrderByPrice(String input){
        List<Product> products = null;
        Session session = null;
        try {
            session = sessionFactory.openSession();
            products = session.createCriteria(Product.class).add(Restrictions.ilike("productBrand","%"+input+"%")).addOrder(Order.asc("productMPN")).list();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return products;
    }

    public Product getProduct(int productId) throws SQLException {
        Session session = null;
        Product product = null;
        try {
            session = sessionFactory.openSession();
            product = (Product) session.get(Product.class, productId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return product;
    }



    public List<Product> getAllProducts() throws SQLException {
        List<Product> products = null;
        Session session = null;
        try {
            session = sessionFactory.openSession();
            products = session.createCriteria(Product.class).list();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }

        return products;
    }

    public void addComment(String userName, String content,int productId,int star){

        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            Comment comment = new Comment();
            comment.setUsername(userName);
            comment.setContent(content);
            comment.setStar(star);
            Product product = (Product)session.get(Product.class,new Integer(productId));
//            System.out.println("yes"+product.getProductId());
            product.getComments().add(comment);
            comment.setProduct(product);
            session.save(product);
            session.save(comment);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }

    }
}
