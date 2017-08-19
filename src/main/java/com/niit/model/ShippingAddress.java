package com.niit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class ShippingAddress implements Serializable
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int shipid;
	private String username;
	private String address;
	private String landmark;
	private String cityname;
	private String countryname;
	private String state;
	private int pincode;
	
	
	
	
	@Override
	public String toString() {
		return "ShippingAddress [shipid=" + shipid + ", username=" + username
				+ ", address=" + address + ", landmark=" + landmark
				+ ", cityname=" + cityname + ", countryname=" + countryname
				+ ", state=" + state + ", pincode=" + pincode + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getShipid() {
		return shipid;
	}
	public void setShipid(int shipid) {
		this.shipid = shipid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public String getCountryname() {
		return countryname;
	}
	public void setCountryname(String countryname) {
		this.countryname = countryname;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	
	

}
