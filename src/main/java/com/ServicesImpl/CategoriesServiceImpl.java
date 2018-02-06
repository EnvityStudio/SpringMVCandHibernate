package com.ServicesImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.CategoriesDao;
import com.model.Categories;
import com.servicesapi.CategoriesService;
/**
 * Class CategoriesServiceImpl implements CategoriesService
 * @author thuan
 *
 */
@Service
public class CategoriesServiceImpl implements CategoriesService {
    @Autowired
    CategoriesDao categoriesDao;

    public List<Categories> listCategories() {
        return categoriesDao.listCategories();
    }


}
