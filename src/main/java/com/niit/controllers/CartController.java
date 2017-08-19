package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Dao.AddProductDao;
import com.niit.Dao.CartDao;
import com.niit.Dao.ShippingaddressDao;
import com.niit.Dao.UserDao;
import com.niit.model.AddProduct;
import com.niit.model.Cart;
import com.niit.model.Category;
import com.niit.model.Registration;
import com.niit.model.ShippingAddress;

@Controller
public class CartController {
	
	@Autowired
	AddProductDao addProductDao;
	
	@Autowired
	CartDao cartDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	ShippingaddressDao shippingaddressDao;
	
	
	
	@RequestMapping("/cart/{productid}")
	public ModelAndView cartpage(HttpServletRequest request, @PathVariable String productid,HttpSession session,@RequestParam int quantity)
	{	
		
		Cart c=new Cart();
		AddProduct p= addProductDao.getProductById(productid);
		String username=(String)session.getAttribute("username");
		if(username==null)
		{
			 
			return new ModelAndView("redirect:/login");
		}
		
		else
		{
			
			c.setFlag(0);
			c.setUsername(username);
			c.setPurchasedquantity(quantity);
			c.setProductid(p.getProductid());
			c.setProductbrand(p.getProductbrand());
			c.setProductcolor(p.getProductcolor());
			c.setProductname(p.getProductname());
			c.setProductprice(p.getProductprice());
			c.setWomensize(p.getWomensize());
			cartDao.saveCart(c);
			
			return new ModelAndView("redirect:/viewcart");
		}
	}
	
	
	
	@RequestMapping("/deletecart/{productid}")
	public ModelAndView  deletefromcart(@PathVariable String productid)
	{
		
		cartDao.deleteCart(productid);
		ModelAndView model=new ModelAndView("redirect:/viewcart");
		
		return model;
		
	}
	
	@RequestMapping("/addtocart")
	public ModelAndView  viewfromcart()
	{ 
		ModelAndView model=new ModelAndView("addtocart");
		List<Cart> cart=cartDao.getallproductfromcart();
		Gson g=new Gson();
		String cartuser=g.toJson(cart);
		model.addObject("cartuser",cartuser);
        return model;
		
	}
	
	@RequestMapping("/viewcart")
	public ModelAndView m1(HttpServletRequest request,HttpSession session)
	{
		ModelAndView mv=new ModelAndView("viewcart");
		Gson gson=new Gson();
		session=request.getSession(false);
		String username=(String)session.getAttribute("username");
		List<Cart> cart1 =cartDao.viewCartProducts(username);
		String cartlist=gson.toJson(cart1);
		
		mv.addObject("cartlist",cartlist);
		mv.addObject("p",cartlist);
		System.out.println("GSON VALUE:"+cartlist);
		Double total=(Double)cartDao.getTotalAmount(username);
		mv.addObject("g",total);
		session.setAttribute("grandtotal", total);
		return mv;
	}

	@RequestMapping("/thankyou")
	public ModelAndView review(HttpServletRequest request,HttpSession session)
	{
		ModelAndView m=new ModelAndView("Thankyou");
		Gson gson=new Gson();
		session=request.getSession(false);
		String username=(String)session.getAttribute("username");
		List<Cart> cart1 =cartDao.viewCartProducts(username);
		List<Registration> addr =userDao.getalluseraddress(username);
		String cartlist=gson.toJson(cart1);
		String cartaddr=gson.toJson(addr);
		m.addObject("cartlist",cartlist);
		m.addObject("cartaddr",cartaddr);
		
		return m;
	}
}
