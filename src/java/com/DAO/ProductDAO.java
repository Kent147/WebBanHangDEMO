/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.Model.Product;
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
public class ProductDAO {
    
     @Autowired
    protected JdbcTemplate jdbc;

    public Product getByUsername(String namepd) {
        String sql = "SELECT * FROM products WHERE name_pd=?";
        return jdbc.queryForObject(sql, getRowMapper(), namepd);
    }

    public List<Product> getAll() {
        String sql = "SELECT * FROM products";
        return getBySql(sql);
    }

    protected List<Product> getBySql(String sql) {
        return jdbc.query(sql, getRowMapper());
    }

    private RowMapper<Product> getRowMapper() {
        return new BeanPropertyRowMapper<Product>(Product.class);
    }

    public void insert(Product pd) {
        String sql = "INSERT INTO products VALUES (?,?,?,?,?)";
        System.out.println(pd.toString());
        jdbc.update(sql,pd.getId_pd(), pd.getName_pd(), pd.getCost_pd(), pd.getImg(), pd.getInfo());
    }

    public void update(Product pd) {
        String sql = "UPDATE products SET name_pd=?, cost_pd=?, img=?, info=? where id_pd= ?";
        Object[] param = {pd.getName_pd(), pd.getCost_pd(), pd.getImg(), pd.getInfo(), pd.getId_pd()};
        //int[] types = {Types.NVARCHAR, Types.NVARCHAR, Types.NVARCHAR, Types.NVARCHAR};
        int i = jdbc.update(sql, param);//, types);
        System.out.println("Update Row: " + i);
    }

    public void delete(String id) {
        String sql = "DELETE FROM products WHERE id_pd=?";
        jdbc.update(sql, id);
    }

    public List<Product> getById(String id) {
        String sql = "SELECT * FROM products WHERE id_pd= ?";
        return jdbc.query(sql, getRowMapper(), "%" + id + "%");
    }
}
