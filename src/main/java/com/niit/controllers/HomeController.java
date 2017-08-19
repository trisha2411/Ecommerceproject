package com.niit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.AddProductDao;
import com.niit.Dao.CategoryDao;
import com.niit.Dao.UserDao;
import com.niit.model.AddProduct;
import com.niit.model.Registration;

@Controller
public class HomeController 
{
	@Autowired
	UserDao userDao;
	@Autowired
	CategoryDao categoryDao;
	
	
	@RequestMapping("/")
	public ModelAndView homepage(HttpSession session,HttpServletRequest request){
		session.setAttribute("categories",categoryDao.getallcategoryclothingname());
		session.setAttribute("electronics",categoryDao.getallcategoryelectronicname());
		session.setAttribute("accessories",categoryDao.getallcategoryaccessoriesname());
		ModelAndView model=new ModelAndView("firstpage");
		return model;
		
	}
	
	
	
	@RequestMapping("/home")
	public ModelAndView homepage1(HttpSession session)
	{
		session.setAttribute("categories",categoryDao.getallcategoryclothingname());
		session.setAttribute("electronics",categoryDao.getallcategoryelectronicname());
		session.setAttribute("accessories",categoryDao.getallcategoryaccessoriesname());
		ModelAndView model=new ModelAndView("firstpage");
		
		return model;
		
	}
	@RequestMapping("/demohome")
	public ModelAndView homepage2()
	{
		
		ModelAndView model=new ModelAndView("demohome");
		
		return model;
		
	}
	@RequestMapping("/firstpage")
	public ModelAndView homepage3()
	{
		
		ModelAndView model=new ModelAndView("firstpage");
		
		return model;
		
	}
	
	@RequestMapping("/savedata")
	public ModelAndView signuppage1(@ModelAttribute Registration r){
		r.setRole("ROLE_USER");
		r.setEnabled(true);
		userDao.saveUser(r);
		ModelAndView model=new ModelAndView("login");
		return model;
		
	}


	@RequestMapping("/aboutus")
	public ModelAndView aboutuspage(){
		
		ModelAndView model=new ModelAndView("aboutus");
		
		return model;
		
	}

	@RequestMapping("/contactus")
	public ModelAndView contactpage(){
		
		ModelAndView model=new ModelAndView("contactus");
		
		return model;
		
	}
	@RequestMapping("/login")
	public ModelAndView loginpage(){
		
		ModelAndView model=new ModelAndView("login");
		
		return model;
		
	}
	@RequestMapping("/signup")
	public ModelAndView signuppage(){
		
		ModelAndView model=new ModelAndView("signup","command",new Registration());
		
		return model;
		
	}
	@RequestMapping("/customerhome")
	public ModelAndView customerhomepage(){
		
		ModelAndView model=new ModelAndView("customerhome");
		
		return model;
		
	}
	
	@RequestMapping("/editaccount/{username}")
	public ModelAndView editproduct(@PathVariable String username)
	{
		
	  Registration p=userDao.getUserByname(username);		
		ModelAndView model=new ModelAndView("editaccount","command",p);
		return model;
		
	}

	@RequestMapping("/editdata")  
    public ModelAndView editsaveproduct(@ModelAttribute Registration p) {  
        userDao.updateUser(p);
        return new ModelAndView("redirect:/firstpage");  
	}



}
