package com.niit.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Dao.UserDao;
import com.niit.model.AddProduct;
import com.niit.model.Registration;

@Controller
public class LoginController 
{
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request)
	{
		
		System.out.println("inside logout controller");
		HttpSession session=request.getSession(false);
		session.setAttribute("username", "");
		session.invalidate();
		return new ModelAndView("firstpage");
	}
	
	@RequestMapping("/LoginPage")
	public ModelAndView loginuser(HttpServletRequest request,@RequestParam String username, @RequestParam String password,HttpSession session)
	{
		boolean t=userDao.validateLogin(username, password);
		if(t==true)
		{
		  ModelAndView model=new ModelAndView("firstpage").addObject("username",username);
		  session.setAttribute("username", username);
	      return new ModelAndView("redirect:/newUrl");
		}
		else
		{
			return new ModelAndView("login","err","invalid user");
		}
	}

	@RequestMapping("/newUrl")
	public ModelAndView newUrl(HttpServletRequest request)
	{	
		HttpSession session=request.getSession(false);
		if(session!=null)
		{
		String sessionUrl=(String)session.getAttribute("url");
		System.out.print("session url value "+sessionUrl);
		return new ModelAndView("redirect:" + sessionUrl);
		}
		else
		{
		    return new ModelAndView("firstpage");
			
		}
	}
	
	@RequestMapping("/firstlogin")
	public ModelAndView firstloginuser(HttpServletRequest request,@RequestParam String username, @RequestParam String password,HttpSession session)
	{
		boolean t=userDao.validateLogin(username, password);
		if(t==true)
		{
		  ModelAndView model=new ModelAndView("firstpage").addObject("username",username);
		  session.setAttribute("username", username);
	      return new ModelAndView("redirect:/firstpage");
		}
		else
		{
			return new ModelAndView("login","err","invalid user");
		}
	}
	
	@RequestMapping("/firstloginpage")
	public ModelAndView firstlogin()
	{
		
		  ModelAndView model=new ModelAndView("firstlogin");
		  
			return model;
		
	}

	
}
