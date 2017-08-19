package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Dao.AddFavouriteDao;
import com.niit.Dao.AddProductDao;
import com.niit.model.AddFavourite;
import com.niit.model.AddProduct;
import com.niit.model.Cart;

@Controller
public class FavouriteController
{
	@Autowired
	AddProductDao addProductDao;

    @Autowired
    AddFavouriteDao addFavouriteDao;
    
    @RequestMapping("/addfavourite/{productid}")
    public ModelAndView favouriteproductsShow(@PathVariable String productid,HttpSession session)
     {
    	AddFavourite c=new AddFavourite();
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
			
			c.setProductid(p.getProductid());
			c.setProductbrand(p.getProductbrand());
			c.setProductcolor(p.getProductcolor());
			c.setProductname(p.getProductname());
			c.setProductprice(p.getProductprice());
			c.setWomensize(p.getWomensize());
			addFavouriteDao.savefav(c);
			
			return new ModelAndView("redirect:/addfavourite");
		}
		
	   
      }
	
	@RequestMapping("/addfavourite")
    public ModelAndView favouriteproducts(HttpSession session)
     {
		
		ModelAndView mv=new ModelAndView("addfavourite");
		String username=(String)session.getAttribute("username");
		List<AddFavourite> listfav=addFavouriteDao.viewfavProducts(username);
		Gson g=new Gson();
		String favlist=g.toJson(listfav);
		mv.addObject("favlist",favlist);
		return mv;
		
	   
      }

	@RequestMapping("/deletefav/{productid}")
	public ModelAndView  deletefromfav(@PathVariable String productid)
	{
		
		addFavouriteDao.deletefav(productid);
		ModelAndView model=new ModelAndView("redirect:/addfavourite");
		
		return model;
		
	}

	
}
