package com.niit.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.AddProduct;
import com.niit.model.Category;
import com.niit.model.Supplier;


@Repository
public class AddProductDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	public void saveProduct(AddProduct p)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(p);
		tx.commit();
		sess.close();
	}
	public void deleteProduct(AddProduct p)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(p);
		tx.commit();
		sess.close();
	}
	
	public void updateProduct(AddProduct p)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(p);
		tx.commit();
		sess.close();
	}

	public List<AddProduct> getallproduct()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	public List<AddProduct> getallproductforwomens()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='womens'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductformens()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Mens'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductforwomenacc()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='women'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductformenacc()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Men'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductforelectronicsacc()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Electronics'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductforkids()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Kids'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductformobiles()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Mobiles'");
		List<AddProduct> list=qe.list();
		return list;
    }

	public List<AddProduct> getallproductforlaptops()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='laptops'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductfortelevisions()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Televisions'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductforbooks()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Books'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	public List<AddProduct> getallproductforfurnitures()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddProduct where categoryname='Furnitures'");
		List<AddProduct> list=qe.list();
		return list;
		
		
	}
	
	
	
	public AddProduct getProductById(String productid)
	{
		Session sess=getSession();
		AddProduct p=sess.get(AddProduct.class, productid);
		return p;
	}
	
	public List<Category> getAllCategories()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("select categoryname from Category");
		List<Category> listc=qe.list();
		return listc;	
	}
	
	public List<Supplier> getAllSuppliers()
	{	
		Session sess=getSession();
		Query qe=sess.createQuery("select suppliername from Supplier");
		List<Supplier> lists=qe.list();
		return lists;	
	}
}
