package com.ServicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.ProductDao;
import com.model.Product;
import com.servicesapi.ProductService;
/**
 * 
 * @author thuan
 *
 */
@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDao productDao;

	public boolean buyProduct(Product product) {
		return false;
	}

	public Product getDetailProduct(int idProduct) {
		return productDao.getDetailProduct(idProduct);
	}

	public List<Product> listProducts() {
		return productDao.listProducts();
	}

	public List<Product> listProductsByCategories(int idCategory) {
		return productDao.listProductsByCategories(idCategory);
	}

	public List<Product> searchProduct(String nameProduct, int idCategory, long minPrice, long maxPrice, int status) {
		return productDao.searchProduct(nameProduct, idCategory, minPrice, maxPrice, status);
	}

	public boolean createProduct(Product product) {
		return productDao.createProduct(product);
	}

	public boolean updatProduct(Product product) {

		return productDao.updateProduct(product);
	}

}
