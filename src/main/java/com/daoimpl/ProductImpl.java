package com.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Product;

/**
 * ProductImpl method implements ProductDao
 * 
 * @author thuan
 *
 */
@Repository
@Transactional
public class ProductImpl implements ProductDao {
	@Autowired
	SessionFactory session;

	/**
	 * get detail product
	 */
	public Product getDetailProduct(int idProduct) {
		Product product = new Product();
		Query query = session.getCurrentSession().createQuery("from Product where idproduct = " + idProduct);
		product = (Product) query.uniqueResult();
		return product;
	}

	@SuppressWarnings("unchecked")
	/**
	 * get list product with status =0
	 */
	public List<Product> listProducts() {

		List<Product> list = (List<Product>) new ArrayList<Product>();
		Query query = session.getCurrentSession().createQuery("from Product where status=0");
		list = (ArrayList<Product>) query.list();

		return list;
	}

	@SuppressWarnings("unchecked")
	/**
	 * get list product by category
	 */
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

	/**
	 * search product
	 */
	@SuppressWarnings("unchecked")
	public List<Product> searchProduct(String nameProduct, int idCategory, long minPrice, long maxPrice, int status) {
		StringBuilder sql = new StringBuilder("from Product where ");
		if (nameProduct == "") {
			if (idCategory == 0) {
				if (minPrice == 0) {
					if (maxPrice == 0) {
						if (status == 0) {
							sql.append(" status=0");
						} else {
							sql.append(" status=1");
						}
					} else {
						sql.append(" price < " + maxPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}

				} else {
					if (maxPrice == 0) {
						sql.append(" price>" + minPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					} else {
						sql.append("( price between " + minPrice + " and " + maxPrice + ")");
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}
				}
			} else {
				sql.append(" categories = " + idCategory + " and ");

				if (minPrice == 0) {
					if (maxPrice == 0) {
						if (status == 0) {
							sql.append(" status=0");
						} else {
							sql.append(" status=1");
						}
					} else {
						sql.append(" price < " + maxPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}

				} else {
					if (maxPrice == 0) {
						sql.append(" price> " + minPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					} else {
						sql.append("( price between " + minPrice + " and " + maxPrice + ")");
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}
				}
			}
		} else {
			sql.append(" name like '%" + nameProduct + "%' and ");
			if (idCategory == 0) {
				if (minPrice == 0) {
					if (maxPrice == 0) {
						if (status == 0) {
							sql.append(" status=0");
						} else {
							sql.append(" status=1");
						}
					} else {
						sql.append(" price < " + maxPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}

				} else {
					if (maxPrice == 0) {
						sql.append(" price> " + minPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					} else {
						sql.append("(price between " + minPrice + " and " + maxPrice + ")");
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" nd status=1");
						}
					}
				}
			} else {
				sql.append(" categories = " + idCategory + " and ");

				if (minPrice == 0) {
					if (maxPrice == 0) {
						if (status == 0) {
							sql.append(" status=0");
						} else {
							sql.append(" status=1");
						}
					} else {
						sql.append(" price < " + maxPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}

				} else {
					if (maxPrice == 0) {
						sql.append(" price>" + minPrice);
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					} else {
						sql.append("(price between " + minPrice + " and " + maxPrice + ")");
						if (status == 0) {
							sql.append(" and status=0");
						} else {
							sql.append(" and status=1");
						}
					}
				}
			}
		}
		System.out.println(sql);
		List<Product> list = (List<Product>) new ArrayList<Product>();
		Query query = session.getCurrentSession().createQuery(sql.toString());
		list = (ArrayList<Product>) query.list();
		return list;
	}

	/**
	 * create product
	 */
	public boolean createProduct(Product product) {
		try {
			session.getCurrentSession().saveOrUpdate(product);
			return true;
		} catch (Exception e) {
			e.getMessage();
			return false;
		}
	}

	/**
	 * update product
	 */
	public boolean updateProduct(Product product) {
		try {
			session.getCurrentSession().saveOrUpdate(product);
			return true;
		} catch (Exception e) {
			e.getMessage();
			return false;
		}

	}
}
