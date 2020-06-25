/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.Model.Account;
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
public class AccountDAO {

    @Autowired
    protected JdbcTemplate jdbc;

    public Account getByUsername(String Username) {
        String sql = "SELECT * FROM users WHERE Username=?";
        return jdbc.queryForObject(sql, getRowMapper(), Username);
    }

    public List<Account> getAll() {
        String sql = "SELECT * FROM users";
        return getBySql(sql);
    }

    protected List<Account> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    private RowMapper<Account> getRowMapper() {
        return new BeanPropertyRowMapper<Account>(Account.class);
    }

    public void insert(Account acc) {
        String sql = "INSERT INTO users VALUES (?,?)";
        System.out.println(acc.toString());
        jdbc.update(sql, acc.getUsername(), acc.getPassword());
    }

    public void update(Account acc) {
        String sql = "update users set password=? where username like ?";
        Object[] param = {acc.getPassword(), acc.getUsername()};
        int[] types = {Types.NVARCHAR, Types.NVARCHAR};
        int i = jdbc.update(sql, param, types);
        System.out.println("Update Row: " + i);
    }

    public void delete(String username) {
        String sql = "DELETE FROM users WHERE username=?";
        jdbc.update(sql, username);
    }

    public List<Account> getByName(String username) {
        String sql = "SELECT * FROM users WHERE username LIKE ?";
        return jdbc.query(sql, getRowMapper(), "%" + username + "%");
    }
}
