/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Model;

/**
 *
 * @author root
 */
public class Product {
    String id_pd;

    public String getId_pd() {
        return id_pd;
    }

    public void setId_pd(String id_pd) {
        this.id_pd = id_pd;
    }
    String name_pd;
    String cost_pd;
    String img;
    String info;
    
    public String getName_pd() {
        return name_pd;
    }

    public void setName_pd(String name_pd) {
        this.name_pd = name_pd;
    }

    public String getCost_pd() {
        return cost_pd;
    }

    public void setCost_pd(String cost_pd) {
        this.cost_pd = cost_pd;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
    
    @Override
    public String toString() {
        return "Products{" + "id=" + id_pd + ", name=" + name_pd + ", cost=" + cost_pd + ", img=" + img + ", info=" + info +'}';
    }
}
