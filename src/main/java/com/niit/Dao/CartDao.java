package com.niit.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.AddProduct;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Repository
public class CartDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	
	public double getTotalAmount(String username) {
		
		double sum = 0L;
		Session session = getSession();
		Transaction tx = session.beginTransaction();
	
		String hql = "select sum(productprice*purchasedquantity)as total from Cart where username=:username";
		Query query = session.createQuery(hql);
		query.setParameter("username", username);

		sum = (Double) query.uniqueResult();
		tx.commit();
		session.close();
		
		return sum;
	}
	
	public void saveCart(Cart cart)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(cart);
		tx.commit();
		sess.close();
	}
	
	public void deleteCart(String productid)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		String hql = "delete from Cart where productid=:productid ";
        Query query = sess.createQuery(hql);
		query.setParameter("productid", productid);
		query.executeUpdate();
		tx.commit();
		sess.close();
	}

	
	public List<Cart> viewCartProducts(String username)
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from Cart where username=:username and flag=0");
		qe.setParameter("username", username);
		List<Cart> list=qe.list();
		return list;
		
	}
	
	public List<Cart> getallproductfromcart()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from Cart");
		List<Cart> listcart=qe.list();
		return listcart;
		
		
	}

}
