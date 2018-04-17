package com.spring.nikita.dao;

import com.spring.nikita.model.OrderFinal;
import com.spring.nikita.model.OrderLines;

import java.sql.SQLException;


public interface OrderFinalDao {

    OrderFinal getOrderById(int orderId) throws SQLException;
    void addOrder(OrderFinal orderFinal) throws SQLException;

}
