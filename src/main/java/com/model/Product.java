package com.model;


import java.text.DecimalFormat;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "idproduct")
    private int idProduct;
    @Column(name="name")
    private String name;
    @Column(name="price")
    private long price;
    @Column(name="discount")
    private int discount;
    @Column(name="description")
    private String description;
    @Column(name="image")
    private String image;
    @Column(name="status")
    private String status;
    @Column(name="categories")
    private int idCategories;
    @Column(name="username")
    private String userName;

    public Product(int idProduct, String name, long price, int discount, String description, String image,
            String status, int idCategories, String userName) {
        super();
        this.idProduct = idProduct;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.description = description;
        this.image = image;
        this.status = status;
        this.idCategories = idCategories;
        this.userName = userName;
    }

    public Product() {
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long  getPrice() {
        
        return price;
    }
    public String getPriceConvert()
    {
        DecimalFormat formatter = new DecimalFormat("###,###,###");
        String s = formatter.format(price).toString();
        return s;
    }
    public void setPrice(long price) {
        this.price = price;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getIdCategories() {
        return idCategories;
    }

    public void setIdCategories(int idCategories) {
        this.idCategories = idCategories;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

}
