package com.spring.nikita.dao;

import java.sql.SQLException;

public interface UserRolesDao {

    void addUserRole(com.spring.nikita.model.UserRoles userRoles) throws SQLException;

}
