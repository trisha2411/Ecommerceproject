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
import com.niit.model.Size;

@Repository
public class CategoryDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	public void savecategory(Category c)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(c);
		tx.commit();
		sess.close();
	}
	
	
	public void deletecategory(Category c)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(c);
		tx.commit();
		sess.close();
	}
	public void updatecategory(Category c)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(c);
		tx.commit();
		sess.close();
	}
	
	public List<Category> getallproduct()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from Category");
		List<Category> list=qe.list();
		return list;
		
		
	}
	public List<Size> getallsize()
	{
		Session sess=getSession();
		Query qe=sess.createQuery(" select sizename from Size");
		List<Size> list=qe.list();
		return list;
		
		
	}
	public List<Category> getallcategoryclothingname()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("select categoryname from Category where categorysection='Clothing'");
		List<Category> list=qe.list();
		return list;
		
		
	}
	
	public List<Category> getallcategoryelectronicname()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("select categoryname from Category where categorysection='Electronics'");
		List<Category> list=qe.list();
		return list;
	}
	
	public List<Category> getallcategoryaccessoriesname()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("select categoryname from Category where categorysection='Accessories'");
		List<Category> list=qe.list();
		return list;
	}
	
	
	public Category getCategoryById(String categoryid)
	{
		Session sess=getSession();
		Category p=sess.get(Category.class, categoryid);
		return p;
	}
	
	public void savesize(Size s)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(s);
		tx.commit();
		sess.close();
	}
	

}
