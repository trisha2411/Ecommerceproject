package com.niit.Dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cart;
import com.niit.model.Orders;
import com.niit.model.PaymentMode;
import com.niit.model.ShippingAddress;

@Repository
public class OrderDao
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	public void saveOrder(Orders orders)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		ShippingAddress sa=orders.getShippingaddress();
		PaymentMode py=orders.getPaymentmode();
		sess.save(sa);
		sess.save(py);
		sess.save(orders);
		tx.commit();
		sess.close();
	}
	
	

}
