package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class AddFavourite 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int favid;
	private String productid;
	private String productname;
	private String productbrand;
	private String productcolor;
	private double productprice;
	private String womensize;
	private String username;
	private int flag;
	
	
	
	@Override
	public String toString() {
		return "AddFavourite [favid=" + favid + ", productid=" + productid
				+ ", productname=" + productname + ", productbrand="
				+ productbrand + ", productcolor=" + productcolor
				+ ", productprice=" + productprice + ", womensize=" + womensize
				+ ", username=" + username + ", flag=" + flag + "]";
	}
	public int getFlag() {
		return flag;
	}
	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public int getFavid() {
		return favid;
	}
	public void setFavid(int favid) {
		this.favid = favid;
	}
	public String getProductid() {
		return productid;
	}
	public void setProductid(String productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductbrand() {
		return productbrand;
	}
	public void setProductbrand(String productbrand) {
		this.productbrand = productbrand;
	}
	public String getProductcolor() {
		return productcolor;
	}
	public void setProductcolor(String productcolor) {
		this.productcolor = productcolor;
	}
	public double getProductprice() {
		return productprice;
	}
	public void setProductprice(double productprice) {
		this.productprice = productprice;
	}
	public String getWomensize() {
		return womensize;
	}
	public void setWomensize(String womensize) {
		this.womensize = womensize;
	}
	
	


}
