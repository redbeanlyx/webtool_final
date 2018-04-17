package com.spring.nikita.dao;

import com.spring.nikita.model.Role;

import java.sql.SQLException;

public interface RoleDao {

    Role getRoleByName(int role_id) throws SQLException;
    void addRole(Role role)throws SQLException;
    void editRole(Role role) throws SQLException;


}
