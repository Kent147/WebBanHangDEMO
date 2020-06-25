/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.Model.User;
import java.sql.Types;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

/**
 *
 * @author root
 */
@Repository
public class UserDAO {
    
     @Autowired
    protected JdbcTemplate jdbc;

    public User getByUsername(String Username) {
        String sql = "SELECT * FROM userdetails WHERE Username=?";
        return jdbc.queryForObject(sql, getRowMapper(), Username);
    }

    public List<User> getAll() {
        String sql = "SELECT * FROM userdetails";
        return getBySql(sql);
    }

    protected List<User> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    private RowMapper<User> getRowMapper() {
        return new BeanPropertyRowMapper<User>(User.class);
    }

    public void insert(User acc) {
        String sql = "INSERT INTO userdetails VALUES (?,?,?,?,?)";
        System.out.println(acc.toString());
        jdbc.update(sql, acc.getUser_fullname(), acc.getUser_email(), acc.getUser_phone(), acc.getUser_address());
    }

    public void update(User acc) {
        String sql = "update userdetails set password=? where id_user like ?";
        Object[] param = {acc.getUser_fullname(), acc.getUser_email(), acc.getUser_phone(), acc.getUser_address()};
        int[] types = {Types.NVARCHAR, Types.NVARCHAR, Types.NVARCHAR, Types.NVARCHAR};
        int i = jdbc.update(sql, param, types);
        System.out.println("Update Row: " + i);
    }

    public void delete(String username) {
        String sql = "DELETE FROM userdetails WHERE id_user=?";
        jdbc.update(sql, username);
    }

    public List<User> getByName(String username) {
        String sql = "SELECT * FROM userdetails WHERE fullname LIKE ?";
        return jdbc.query(sql, getRowMapper(), "%" + username + "%");
    }
}
