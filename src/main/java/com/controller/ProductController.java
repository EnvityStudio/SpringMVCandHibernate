package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Categories;
import com.model.Product;
import com.servicesapi.CategoriesService;
import com.servicesapi.ProductService;

/**
 * 
 * @author thuan
 *
 */
@Controller
@RequestMapping("product")
public class ProductController {
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	ProductService productService;

	/**
	 * 
	 * @param mm
	 * @return
	 */
	@RequestMapping(value = "/allproduct", method = RequestMethod.GET)
	public String allProduct(ModelMap mm) {
		List<Categories> listCategories = categoriesService.listCategories();
		List<Product> listProduct = productService.listProducts();
		mm.put("listCategories", listCategories);
		mm.put("listProducts", listProduct);
		return "ProductList";
	}

	@RequestMapping(value = "/productbycategory", method = RequestMethod.GET)
	public String getProductByCategory(@RequestParam(value = "idcategory", required = false) int idcategory,
			ModelMap mm) {
		List<Product> listProduct = productService.listProductsByCategories(idcategory);
		List<Categories> listCategories = categoriesService.listCategories();
		mm.put("listCategories", listCategories);
		mm.put("listProducts", listProduct);

		return "ProductList";
	}

	@RequestMapping(value = "/productdetail", method = RequestMethod.GET)
	public String productDetail(@RequestParam(value = "idproduct", required = false) int idproduct, ModelMap mm) {
		Product product = new Product();
		product = productService.getDetailProduct(idproduct);
		mm.put("product", product);
		return "ProductDetail";
	}

	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String buyProduct(@RequestParam(value = "idproduct", required = false) int idproduct, ModelMap mm) {
		Product product = new Product();
		product = productService.getDetailProduct(idproduct);
		mm.put("product", product);
		return "Buy";
	}

	@RequestMapping(value = "/buySuccess", method = RequestMethod.POST)
	public String buySuccess(@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "idproduct", required = true) int idProduct, ModelMap mm) {
		Product product = new Product();
		product = productService.getDetailProduct(idProduct);
		product.setUserName(name);
		product.setStatus("1");
		boolean a = productService.updatProduct(product);
		if (a == true) {
			mm.put("notify", "Thành công");
		}
		else {
			mm.put("notify", "Thất bại");
		}
		
		return "BuySuccess";
	}
}
