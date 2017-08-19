package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.CategoryDao;
import com.niit.model.AddProduct;
import com.niit.model.Category;

@Controller
public class CategoryController
{
	@Autowired
	CategoryDao categoryDao;
	
	
	@RequestMapping("/savecategory")  
    public ModelAndView savecategorydata(@ModelAttribute Category c) {  
        
		categoryDao.savecategory(c);
        return new ModelAndView("redirect:/viewcategory"); 
	}
	@RequestMapping("/addcategory")
	public ModelAndView saveCategory()
	{
		return new ModelAndView("addcategory","command",new Category());
		
	}
	@RequestMapping("/viewcategory")
	public ModelAndView viewCategory(@ModelAttribute Category c)
	{
		List<Category> list=categoryDao.getallproduct();
		return new ModelAndView("viewcategory").addObject("categorylist", list);
		
	}
	
	@RequestMapping("/editcategory/{categoryid}")
	public ModelAndView editproduct(@PathVariable String categoryid)
	{
		Category p=categoryDao.getCategoryById(categoryid);		
		ModelAndView model=new ModelAndView("editcategory","command",p);
		
		return model;
		
	}

	@RequestMapping("/editsavecategory")  
    public ModelAndView editsavecategory(@ModelAttribute Category c) {  
        categoryDao.updatecategory(c);
        return new ModelAndView("redirect:/viewcategory","command",new Category());  
	}

	@RequestMapping("/deletecategory/{categoryid}")
	public ModelAndView  deleteproduct(@PathVariable String categoryid)
	{
		Category p=categoryDao.getCategoryById(categoryid);
		categoryDao.deletecategory(p);
		ModelAndView model=new ModelAndView("redirect:/viewcategory");
		
		return model;
		
	}
	

}
