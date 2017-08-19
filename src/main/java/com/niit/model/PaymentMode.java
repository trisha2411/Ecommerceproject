package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class PaymentMode implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int paymentid;
	private String payment;
	private long cardnumber;
	private int ccvnumber;
	private String expiredate;
	
    
	@Override
	public String toString() {
		return "PaymentMode [paymentid=" + paymentid + ", payment=" + payment
				+ ", cardnumber=" + cardnumber + ", ccvnumber=" + ccvnumber
				+ ", expiredate=" + expiredate + "]";
	}

	public int getCcvnumber() {
		return ccvnumber;
	}

	public void setCcvnumber(int ccvnumber) {
		this.ccvnumber = ccvnumber;
	}

	public String getExpiredate() {
		return expiredate;
	}

	public void setExpiredate(String expiredate) {
		this.expiredate = expiredate;
	}

	public long getCardnumber() {
		return cardnumber;
	}

	public void setCardnumber(long cardnumber) {
		this.cardnumber = cardnumber;
	}

	public int getPaymentid() {
		return paymentid;
	}
	public void setPaymentid(int paymentid) {
		this.paymentid = paymentid;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	
	

}
