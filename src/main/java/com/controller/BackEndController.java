package com.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Product;
import com.servicesapi.CategoriesService;
import com.servicesapi.ProductService;

/**
 * BackEndController method contain controller abou
 * @author thuan
 *
 */
@Controller
@RequestMapping("backend")
public class BackEndController {
	@Autowired
	CategoriesService categoriesService;
	@Autowired
	ProductService productService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String backEnd() {
		return "BackEnd";
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.GET)
	public String addProduct(HttpServletRequest request, ModelMap mm) {
		System.out.println("post");
		String nameProduct = request.getParameter("nameproduct");
		String price = request.getParameter("price");
		String discount = request.getParameter("discount");
		String image = request.getParameter("image");
		String category = request.getParameter("category");
		String description = request.getParameter("description");
		
		Product product = new Product();
		product.setName(nameProduct);
		
		long price1 = Long.valueOf(price);
		
		product.setPrice(price1);
		product.setDiscount(Integer.valueOf(discount).intValue());
		product.setImage(image);
		product.setIdCategories(Integer.valueOf(category).intValue());
		product.setDescription(description);
		boolean result = productService.createProduct(product);
		if(result ==true)
		{
			mm.put("notify", "Thêm sản phẩm thành công!");
		}
		else
		{
			mm.put("notify", "Thêm sản phẩm thất bại!");
		}
		
		
		return "BackEnd";
	}

	@RequestMapping(value = "/updateproduct", method = RequestMethod.GET)
	public String updateProduct(@RequestParam(value = "idproduct", required = true) int idproduct, ModelMap mm) {
		
		Product product = new Product();
		product = productService.getDetailProduct(idproduct);
		mm.put("product", product);
		return "BackEnd";
	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String updateProduct(@RequestParam(value = "nameproduct", required = true) String nameproduct,
			@RequestParam(value = "price", required = true) long price,
			@RequestParam(value = "idproduct", required = true) int idproduct,
			@RequestParam(value = "discount", required = true) int discount,
			@RequestParam(value = "image", required = true) String image,
			@RequestParam(value = "category", required = true) int category,
			@RequestParam(value = "description", required = true) String description, ModelMap mm) {
		Product product = new Product();
		product.setIdProduct(idproduct);
		product.setName(nameproduct);
		product.setPrice(price);
		product.setDiscount(Integer.valueOf(discount).intValue());
		product.setImage(image);
		product.setIdCategories(Integer.valueOf(category).intValue());
		product.setDescription(description);
		boolean result= productService.updatProduct(product);
		if(result ==true)
		{
			mm.put("notify", "Sửa sản phẩm thành công!");
		}
		else
		{
			mm.put("notify", "Sửa sản phẩm thất bại!");
		}

		return "BackEnd";
	}

	@RequestMapping(value = "/searchProduct", method = RequestMethod.POST)
	public String searchProduct(@RequestParam(value = "name", required = false) String name,
			@RequestParam(value = "categories", required = false) int category,
			@RequestParam(value = "minprice", required = false) long minPrice,
			@RequestParam(value = "maxprice", required = false) long maxPrice,
			@RequestParam(value = "sold", required = false) String sold, ModelMap mm,HttpServletRequest request) {
		System.out.println("reqeust" + request.getParameter("categories"));
		
		int status = 0;
		if (sold != null) {
			status = 1;
		}
		if (name == null) {
			name = "";
		}
		

		List<Product> list = new ArrayList<Product>();
		list = productService.searchProduct(name, category, minPrice, maxPrice, status);
		mm.put("listProduct", list);
		return "BackEnd";
	}

}
