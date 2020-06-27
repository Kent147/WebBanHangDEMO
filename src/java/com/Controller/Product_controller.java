/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Controller;

import com.DAO.ProductDAO;
import com.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author root
 */
@Controller
public class Product_controller {

    @Autowired
    private ProductDAO dao;

//    1. load_data
    public String initiate(ModelMap model) {
        model.addAttribute("product", new Product());
        model.addAttribute("products", dao.getAll());
        return "index";
    }

    //2. insert
    @RequestMapping(value = "index", params = "insertProducts", method = RequestMethod.POST)
    public String insert(@ModelAttribute("pd") Product pd, ModelMap model) {

        try {
            dao.insert(pd);
            return initiate(model);
        } catch (Exception ex) {
            model.addAttribute("loi", "Products đã tồn tại");
            return initiate(model);
        }

    }

    //4. find
    @RequestMapping(params = "findProducts", method = RequestMethod.POST)
    public String find(@ModelAttribute("username1") String id, ModelMap model) {

        model.addAttribute("accs", dao.getById(id));

        return "index";
    }

    /**
     * GET|POST: crud.html?delete
     */
    //5. delete
    @RequestMapping(value = "index", params = "deleteProducts")
    public String delete(@RequestParam("id") String id, ModelMap model) {
        dao.delete(id);
        return initiate(model);
    }

    /**
     * GET: crud.html?edit
     */
    //6. edit
    @RequestMapping(params = "editProducts", method = RequestMethod.GET)
    public String edit(@RequestParam("pd") String id, ModelMap model) {
        Product f = (Product) dao.getById(id);
        model.addAttribute("product", f);
        model.addAttribute("products", dao.getAll());
        return "index";
    }

    /**
     * POST: crud.html?update
     */
    //7. update
    @RequestMapping(value = "index", params = "updateProducts", method = RequestMethod.POST)
    public String update(ModelMap model,@ModelAttribute("pd") Product pd) {
        try {
            System.out.println(pd.toString());
            dao.update(pd);
            return initiate(model);
        } catch (Exception e) {
            System.out.println("lỗi");
            return initiate(model);
        }
    }
}
