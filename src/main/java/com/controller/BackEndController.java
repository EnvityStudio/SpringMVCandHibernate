package com.controller;

import java.util.ArrayList;
import java.util.List;

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
            @RequestParam(value = "minprice", required = false)long minPrice,
            @RequestParam(value = "maxprice", required = false) long maxPrice,
            @RequestParam(value = "sold", required = false) String sold, ModelMap mm) {
    	System.out.println("search product");
    	System.out.println(name);
    	int status = 0;
    	if(sold!=null)
    	{
    		status=1;
    	}
    	if(name==null)
    	{
    		name="";
    	}
    		
    	
       List<Product> list = new ArrayList<Product>();
       list = productService.searchProduct(name, category, minPrice, maxPrice, status);
       mm.put("listProduct", list);
        return "BackEnd";
    }
  
}
