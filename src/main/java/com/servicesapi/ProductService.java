package com.servicesapi;
/**
 * interface ProductService 
 * @author thuan
 */
import java.util.List;

import com.model.Product;

public interface ProductService {
    public List<Product> listProducts();
    public boolean buyProduct(Product product);
    public List<Product> listProductsByCategories(int idCategory);
    public Product getDetailProduct(int idProduct);
    public List<Product> searchProduct(String nameProduct,int idCategory, long minPrice,long maxPrice, int status);
    public boolean createProduct(Product product);
    public boolean updatProduct(Product product);
}
