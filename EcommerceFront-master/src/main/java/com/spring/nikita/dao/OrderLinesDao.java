package com.spring.nikita.dao;

import com.spring.nikita.model.OrderLines;
import com.spring.nikita.model.Product;
import com.spring.nikita.model.User;

import java.sql.SQLException;
import java.util.List;

public interface OrderLinesDao {

    OrderLines getOrderLine (int orderLineId) throws SQLException;
    void editOrderLine (OrderLines orderLine) throws SQLException;
    void deleteOrderLine (OrderLines orderLine) throws SQLException;
    List<OrderLines> getAllOrderLines() throws SQLException;
    OrderLines getOrderLineBySerNameAndProduct (User user, Product product) throws SQLException;
    List<OrderLines> getAllUserLineByRequiredUser(User user) throws SQLException;
    List<OrderLines> getNotApprovedLineByUserId(int id) throws SQLException;
    void sqlEditOrderLine(OrderLines orderLine) throws SQLException;

}
