package com.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CategoriesDao;
import com.model.Categories;

@Repository
@Transactional
public class CategoriesImpl implements CategoriesDao {

    @Autowired
    SessionFactory session;

    @SuppressWarnings("unchecked")
    public List<Categories> listCategories() {
        
        List<Categories> list = (List<Categories>) new ArrayList<Categories>();
        Query query = session.getCurrentSession().createQuery("from Categories");
        list = (ArrayList<Categories>)query.list();

        return list;
    }

}
