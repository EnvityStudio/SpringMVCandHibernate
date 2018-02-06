package com.controller;

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
 * 
 * @author thuan
 *
 */
@Controller
@RequestMapping("abc")
public class BackEndController {
    @Autowired
    CategoriesService categoriesService;
    @Autowired
    ProductService productService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String backEnd() {
        return "BackEnd";
    }

    @RequestMapping(value = "/searchproduct", method = RequestMethod.POST)
    public String searchProduct(@RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "category", required = false) int category,
            @RequestParam(value = "minprice", required = false) String minPrice,
            @RequestParam(value = "maxprice", required = false) int maxPrice,
            @RequestParam(value = "sold", required = false) int sold, ModelMap mm) {
       
        return "/";
    }
    @RequestMapping(value="/productdetail",method =RequestMethod.GET)
    public String productDetail(@RequestParam(value = "idproduct", required = false) int idproduct,ModelMap mm)
    {
    	System.out.println("abc");
         Product product = new Product();
         product = productService.getDetailProduct(idproduct);
         mm.put("product", product);
        return "ProductDetail";
    }
}
