package com.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Product;

@Repository
@Transactional
public class ProductImpl implements ProductDao {
    @Autowired
    SessionFactory session;

    

    public Product getDetailProduct(int idProduct) {
       Product product = new Product();
       Query query = session.getCurrentSession().createQuery("from Product where idproduct = " +idProduct);
       product = (Product) query.uniqueResult();
       return product;
    }
    @SuppressWarnings("unchecked")
    
    public List<Product> listProducts() {

        List<Product> list = (List<Product>) new ArrayList<Product>();
        Query query = session.getCurrentSession().createQuery("from Product where status=0");
        list = (ArrayList<Product>) query.list();

        return list;
    }
    @SuppressWarnings("unchecked")
    
    public List<Product> listProductsByCategories(int idCategory) {
        List<Product> list = (List<Product>) new ArrayList<Product>();
        Query query = session.getCurrentSession().createQuery("from Product where categories= :idCategory");
        query.setInteger("idCategory", idCategory);
        list = (ArrayList<Product>) query.list();

        return list;
    }

    public boolean buyProduct(Product product) {
        return false;
    }
    public Product searchProduct(String nameProduct, int idCategory, long minPrice, long maxPrice, int status) {
        StringBuilder sql = new StringBuilder("from Product where ");
        if(nameProduct =="")
        {
            if(idCategory==0)
            {
                if (minPrice==0)
                {
                    if(maxPrice==0)
                    {
                        if(status==0)
                        {
                            sql.append(" status=0");
                        }
                        else
                        {
                            sql.append(" status=1");
                        }
                    }
                    else
                    {
                        sql.append(" price < " +maxPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                   
                }
                else {
                    if(maxPrice==0)
                    {
                        sql.append(" price>"+minPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                    else
                    {
                        sql.append("( price between " +minPrice +" and "+maxPrice+")");
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                }
            }
            else 
            {
                sql.append(" category = "+idCategory +" and ");
                
                if (minPrice==0)
                {
                    if(maxPrice==0)
                    {
                        if(status==0)
                        {
                            sql.append(" status=0");
                        }
                        else
                        {
                            sql.append(" status=1");
                        }
                    }
                    else
                    {
                        sql.append(" price < " +maxPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                   
                }
                else {
                    if(maxPrice==0)
                    {
                        sql.append(" price> "+minPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                    else
                    {
                        sql.append("( price between +"+minPrice +" and "+maxPrice+")");
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                }
            }
        }
        else {
            sql.append(" name like '%"+nameProduct + "%' and ");
            if(idCategory==0)
            {
                if (minPrice==0)
                {
                    if(maxPrice==0)
                    {
                        if(status==0)
                        {
                            sql.append(" status=0");
                        }
                        else
                        {
                            sql.append(" status=1");
                        }
                    }
                    else
                    {
                        sql.append(" price < " +maxPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                   
                }
                else {
                    if(maxPrice==0)
                    {
                        sql.append(" price> "+minPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                    else
                    {
                        sql.append("(price between +"+minPrice +" and "+maxPrice+")");
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" nd status=1");
                        }
                    }
                }
            }
            else 
            {
                sql.append(" category = "+idCategory +" and ");
                
                if (minPrice==0)
                {
                    if(maxPrice==0)
                    {
                        if(status==0)
                        {
                            sql.append(" status=0");
                        }
                        else
                        {
                            sql.append(" status=1");
                        }
                    }
                    else
                    {
                        sql.append(" price < " +maxPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                   
                }
                else {
                    if(maxPrice==0)
                    {
                        sql.append(" price>"+minPrice);
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                    else
                    {
                        sql.append("(price between +"+minPrice +" and "+maxPrice+")");
                        if(status==0)
                        {
                            sql.append(" and status=0");
                        }
                        else
                        {
                            sql.append(" and status=1");
                        }
                    }
                }
            }
        }
        System.out.println("sql query search "+sql);
       Product product = new Product();
        return product;
    }
    public boolean createProduct(Product product) {
        Transaction transaction = null;
        try {
        transaction = session.getCurrentSession().beginTransaction();
        session.getCurrentSession().save(product);
        transaction.commit();
        return true;
        }
        catch(Exception e){
            if(transaction!=null)
            {
                transaction.rollback();
            }
            e.getMessage();
            return false;
        }finally {
            session.getCurrentSession().flush();
            session.getCurrentSession().close();
            
        }
    }
}
