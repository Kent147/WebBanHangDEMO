///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package com.Controller;
//
//import com.DAO.AccountDAO;
//import com.Model.Account;
//import static javax.swing.text.StyleConstants.ModelAttribute;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//
///**
// *
// * @author root
// */
//@Controller
//public class Account_controller {
//
//    @Autowired
//    private AccountDAO dao;
//
//    //1. load_data
////    @RequestMapping(value = "index")
////    public String initiate(ModelMap model) {
////        model.addAttribute("acc", new Account());
////        model.addAttribute("accs", dao.getAll());
////        return "index";
////    }
//
//    //2. insert
//    @RequestMapping(value = "index", params = "insertAccount", method = RequestMethod.POST)
//    public String insert(@ModelAttribute("acc") Account acc, ModelMap model) {
//
//        try {
//            System.out.println(acc.toString());
//            dao.insert(acc);
//            return initiate(model);
//        } catch (Exception ex) {
//            model.addAttribute("errors", "Username đã tồn tại");
//            return initiate(model);
//        }
//
//    }
//
//    //4. find
//    @RequestMapping(params = "findAccount", method = RequestMethod.POST)
//    public String find(@ModelAttribute("username1") String username, ModelMap model) {
//
//        model.addAttribute("accs", dao.getByName(username));
//
//        return "index";
//    }
//
//    /**
//     * GET|POST: crud.html?delete
//     */
//    //5. delete
//    @RequestMapping(value = "index", params = "deleteAccount")
//    public String delete(@RequestParam("username") String username, ModelMap model) {
//        dao.delete(username);
//        return initiate(model);
//    }
//
//    /**
//     * GET: crud.html?edit
//     */
//    //6. edit
//    @RequestMapping(params = "editAccount", method = RequestMethod.GET)
//    public String edit(@RequestParam("username") String username, ModelMap model) {
//        Account f = dao.getByUsername(username);
//        model.addAttribute("acc", f);
//        model.addAttribute("accs", dao.getAll());
//        return "index";
//    }
//
//    /**
//     * POST: crud.html?update
//     */
//    //7. update
//    @RequestMapping(value = "index", params = "updateAccount", method = RequestMethod.POST)
//    public String update(ModelMap model, Account acc) {
//        System.out.println(acc.toString());
//        dao.update(acc);
//        return initiate(model);
//    }
//}
