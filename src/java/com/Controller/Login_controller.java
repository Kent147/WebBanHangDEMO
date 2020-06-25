/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.DAO.AccountDAO;
import com.Model.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


/**
 *
 * @author root
 */
@Controller
public class Login_controller {
    
    @Autowired
    public AccountDAO dao;
    
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String login(ModelMap model) {
        model.addAttribute("user", new Account());
        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(ModelMap model, @ModelAttribute("user") Account user) {
        try {
            //1. lấy ra tài khoản trong database dựa vào user.getUsername()
            Account acc = dao.getByUsername(user.getUsername());
            //2. Sau khi có tồn tài khoản acc của username...kiểm tra có đúng password không
            if (acc.getPassword().equals(user.getPassword())) {
                //3. Nếu đúng mật khẩu thì chuyển qua trang index
                return "index";
            } else {
                //4. Nếu sai password thì thông báo lỗi
                model.addAttribute("loimk", "Mật khẩu sai.");
                return "login";
            }
        } catch (Exception e) {
            model.addAttribute("loi", "username không tồn tại.");
        }
        return "login";
    }
}
