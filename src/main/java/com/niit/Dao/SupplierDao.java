package com.niit.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Supplier;

@Repository
public class SupplierDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
		
	}
	
	public void savesupplier(Supplier s)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(s);
		tx.commit();
		sess.close();
	}
	public void deletesupplier(Supplier s)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(s);
		tx.commit();
		sess.close();
	}
	public void updateSupplier(Supplier s)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(s);
		tx.commit();
		sess.close();
	}
	
	public List<Supplier> getallsupplier()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from Supplier");
		List<Supplier> list=qe.list();
		return list;
		
		
	}
	
	public Supplier getSupplierById(String supplierid)
	{
		Session sess=getSession();
		Supplier p=sess.get(Supplier.class, supplierid);
		return p;
	}

	

}
