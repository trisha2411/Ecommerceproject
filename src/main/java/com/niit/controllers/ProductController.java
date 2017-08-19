package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
public class ProductController {
	
	@Autowired
	AddProductDao addProductDao;
	
	
	

	@RequestMapping("/product")
    public ModelAndView productslist()
     {
	   List<AddProduct> list= addProductDao.getallproduct();
	   Gson g=new Gson();
	   String data=g.toJson(list);
	   System.out.println("json format data "+data);
	   return new ModelAndView("product").addObject("listp", data);
      }
	
	@RequestMapping("/productshow")
    public ModelAndView productsshow()
     {
	   List<AddProduct> list= addProductDao.getallproduct();
	   Gson g=new Gson();
	   String data=g.toJson(list);
	   System.out.println("json format data "+data);
	   return new ModelAndView("productshow").addObject("listp", data);
      }
	
	@RequestMapping("/productdetails/{productid}")
    public ModelAndView productsdetails(HttpServletRequest request,HttpSession session ,@PathVariable String productid)
     {
		AddProduct p=addProductDao.getProductById(productid);
		ModelAndView mv=new ModelAndView("productdetails");
		mv.addObject("product", p);
		String requestURL = request.getRequestURL().toString();
        System.out.println(" current url is "+requestURL);
        session.setAttribute("url", requestURL);
		return mv;
		
	   
      }

	
	@RequestMapping("/womens")
    public ModelAndView womensproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforwomens();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("womens").addObject("listpr", data);
		
	   
      }
	@RequestMapping("/Mens")
    public ModelAndView mensproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductformens();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("mens").addObject("listm", data);
		
	   
      }
	@RequestMapping("/Kids")
    public ModelAndView kidsproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforkids();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("kids").addObject("listk", data);
	}
	
	@RequestMapping("/Mobiles")
    public ModelAndView mobilesproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductformobiles();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("Mobiles").addObject("listmo", data);
	}
	
	@RequestMapping("/laptops")
    public ModelAndView laptopproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforlaptops();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("laptops").addObject("listl", data);
	}
	
	@RequestMapping("/Televisions")
    public ModelAndView televisionsproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductfortelevisions();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("television").addObject("listt", data);
	}
	
	@RequestMapping("/books")
    public ModelAndView booksproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforbooks();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("books").addObject("listb", data);
	}
	
	@RequestMapping("/furnitures")
    public ModelAndView furnituresproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforfurnitures();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("furnitures").addObject("listf", data);
	}
	
	@RequestMapping("/women")
    public ModelAndView womenaccproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforwomenacc();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("women").addObject("listw", data);
	}
	
	@RequestMapping("/Men")
    public ModelAndView menaccproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductformenacc();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("men").addObject("listm", data);
	}
	
	@RequestMapping("/Electronics")
    public ModelAndView Electronicsproducts()
     {
		
		List<AddProduct> list= addProductDao.getallproductforelectronicsacc();
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   return new ModelAndView("Electronics").addObject("liste", data);
	}
	
}
