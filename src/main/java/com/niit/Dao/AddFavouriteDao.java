package com.niit.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.AddFavourite;


@Repository
public class AddFavouriteDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	public void savefav(AddFavourite fav)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(fav);
		tx.commit();
		sess.close();
	}
	
	public void deletefav(String productid)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		String hql = "delete from AddFavourite where productid=:productid ";
        Query query = sess.createQuery(hql);
		query.setParameter("productid", productid);
		query.executeUpdate();
		tx.commit();
		sess.close();
	}

	
	public List<AddFavourite> viewfavProducts(String username)
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddFavourite where username=:username and flag=0");
		qe.setParameter("username", username);
		List<AddFavourite> list=qe.list();
		return list;
		
	}
	
	public List<AddFavourite> getallproductfromfav()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from AddFavourite");
		List<AddFavourite> listfav=qe.list();
		return listfav;
		
		
	}

}
