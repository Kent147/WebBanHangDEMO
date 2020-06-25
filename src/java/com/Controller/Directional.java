/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.DAO.AccountDAO;
import com.DAO.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author root
 */
@Controller
@Transactional
public class Directional {

    @Autowired
    public AccountDAO dao;
    @Autowired
    public UserDAO dao1;

    @RequestMapping("index")
    public String index(ModelMap model) {
        model.addAttribute("users", dao.getAll());
        return "index";
    }

    @RequestMapping("info")
    public String info(ModelMap model) {
        model.addAttribute("user_details", dao1.getAll());
        return "info";
    }
}
