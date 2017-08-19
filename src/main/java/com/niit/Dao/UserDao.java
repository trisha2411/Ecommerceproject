package com.niit.Dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.AddProduct;
import com.niit.model.Registration;

@Repository
public class UserDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession()
	{
		return sessionFactory.openSession();
	}
	
	public boolean validateLogin(String username, String password)
	{
		Session se=getSession();
		Query qe=se.createQuery("from Registration where username=:username and password=:password");
	     qe.setParameter("username", username);
	     qe.setParameter("password", password);
		List<Registration> list=qe.list();
	    
		if(list.size()>0)
		{
			return true;
		}
		else
		{
			return false;
		}
	    
	}
	
	public void saveUser(Registration r)
	{
		Session  sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.save(r);
		tx.commit();
		sess.close();
	}
	
	public Registration getUserByname(String username)
	{
		Session sess=getSession();
		Registration p=sess.get(Registration.class, username);
		return p;
	}	
	public List<Registration> getalluser()
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from Registration");
		List<Registration> list=qe.list();
		return list;
	}	
	public List<Registration> getalluseraddress(String username)
	{
		Session sess=getSession();
		Query qe=sess.createQuery("from Registration where username=:username");
		qe.setParameter("username", username);
		List<Registration> list=qe.list();
		return list;
	}	
	
	public List<Registration> getalluserrole()
	{
		Session sess=getSession();
		Query qe=sess.createQuery(" from Registration where role='ROLE_USER'");
		List<Registration> list=qe.list();
		return list;
	}	
	public void deleteUser(Registration p)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.delete(p);
		tx.commit();
		sess.close();
	}

	public void updateUser(Registration p)
	{
		Session sess=getSession();
		Transaction tx=sess.beginTransaction();
		sess.update(p);
		tx.commit();
		sess.close();
	}
}
