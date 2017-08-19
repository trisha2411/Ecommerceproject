package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Orders implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderid;
	@OneToOne
	private ShippingAddress shippingaddress;
	@OneToOne
	private PaymentMode paymentmode;
	@OneToOne
	private Cart cart;
	
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public ShippingAddress getShippingaddress() {
		return shippingaddress;
	}
	public void setShippingaddress(ShippingAddress shippingaddress) {
		this.shippingaddress = shippingaddress;
	}
	public PaymentMode getPaymentmode() {
		return paymentmode;
	}
	public void setPaymentmode(PaymentMode paymentmode) {
		this.paymentmode = paymentmode;
	}
	@Override
	public String toString() {
		return "Orders [orderid=" + orderid + ", shippingaddress="
				+ shippingaddress + ", paymentmode=" + paymentmode + ", cart="
				+ cart + "]";
	}
	
	
	
	
	

}
