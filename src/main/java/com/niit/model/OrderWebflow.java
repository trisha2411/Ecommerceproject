package com.niit.model;

import java.io.Serializable;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.Dao.OrderDao;




@Component
public class OrderWebflow {
	
	@Autowired
     OrderDao orderDao;

	public  Orders initFlow(){
		return new Orders();
	}
	
	public String addShippingAddress(Orders orders,ShippingAddress shippingAddress)
	{
		orders.setShippingaddress(shippingAddress);
		return "success";
	}
	
	public String addPaymentMethod(Orders orders,PaymentMode paymentmode)
	{
		orders.setPaymentmode(paymentmode);
		return "success";
	}
	
	public String addOrder(Orders orders)
	{
		orderDao.saveOrder(orders);
		return "success";
	}
}
 