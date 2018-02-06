package com.dao;

import java.util.List;

import com.model.Product;

/**
 * 
 * @author thuan
 *
 */
public interface ProductDao {
    public List<Product> listProducts();
    public boolean buyProduct(Product product);
    public List<Product> listProductsByCategories(int idCategory);
    public Product getDetailProduct(int idProduct);
    public Product searchProduct(String nameProduct,int idCategory, long minPrice,long maxPrice, int status);
    public boolean createProduct(Product product);
   
}
