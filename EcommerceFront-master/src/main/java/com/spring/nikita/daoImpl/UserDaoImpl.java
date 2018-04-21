package com.spring.nikita.daoImpl;

import com.spring.nikita.dao.UserDao;
import com.spring.nikita.model.Role;
import com.spring.nikita.model.User;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

//    public Boolean getUserByNameAndPassword(String username, String password){
//        Session session = null;
//        User user = null;
//
//        try {
//            session = sessionFactory.openSession();
//            Criteria crit = session.createCriteria(User.class);
//            crit.add(Restrictions.eq("login","username"));
//            crit.add(Restrictions.eq("password","password"));
//            user = (User)crit.uniqueResult();
//            if(user.getUserRoles().get(0).equals("ADMIN")){
//                 return true;
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if ((session.isOpen()) && (session != null)) {
//                session.close();
//            }
//        }
//
//        return false;
//
//    }
public boolean isAdmin(String username, String password) {
 if(username!=null&&password!=null){
     if(username.equals("admin")&&password.equals("admin")){
         System.out.println("test3");
         return true;
     }
 }

    return false;
//                Session session = null;
//        UserRoles ur = null;
//
//        try {
//            session = sessionFactory.openSession();
//            Criteria crit = session.createCriteria(UserRoles.class);
//            UserRoles userRoles = new UserRoles();
//            Role role = new Role();
//            role.setRoleType("ADMIN");
//            userRoles.setRole(role);
//            User userExample = new User();
//            userExample.setLogin(username);
//            userExample.setPassword(password);
//            Example example = new Example.create();
//            crit.add(example);
////            Criteria userCrit = crit.createCriteria("user");
////            userCrit.add(Restrictions.eq("login","username"));
////            userCrit.add(Restrictions.eq("password","password"));
//
//            ur = (UserRoles) crit.uniqueResult();
//
//              if(ur!=null){
//                  return true;
//              }
//        } catch (Exception e) {
//            e.printStackTrace();
//        } finally {
//            if ((session.isOpen()) && (session != null)) {
//                session.close();
//            }
//        }
//
//        return false;
}
    public User getUserById(int id) throws SQLException {
        Session session = null;
        User user = null;
        try {
            session = sessionFactory.openSession();
            user = (User) session.get(User.class, id);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return user;
    }



    public User getUserByLogin(String login) throws SQLException {
        Session session = null;
        User user = null;
        try {
            session = sessionFactory.openSession();
            Criteria criteria = session.createCriteria(User.class);
            user = (User) criteria.add(Restrictions.like("login", login)).uniqueResult();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return user;
    }


    public void addUser(User user) throws SQLException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.save(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }


    public void editUser(User user) throws SQLException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
            session.update(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }


    public void deleteUser(User user) throws SQLException {
        Session session = null;
        try {
            session = sessionFactory.openSession();
            session.beginTransaction();
//            Query query = session.createQuery("from com.spring.nikita.model.User");
//            List list = query.list();
//
            session.delete(user);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
    }



    public List<User> getAllUsers() throws SQLException {
        Session session = null;
        List<User>users = null;
        try {
            session = sessionFactory.openSession();
            users = session.createCriteria(User.class).list();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if ((session != null) && (session.isOpen())) {
                session.close();
            }
        }
        return users;
    }
}
