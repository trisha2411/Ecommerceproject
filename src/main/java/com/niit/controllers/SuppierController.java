package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.Dao.SupplierDao;
import com.niit.model.Category;
import com.niit.model.Supplier;

@Controller
public class SuppierController
{
	@Autowired
	SupplierDao supplierDao;
	
	
	@RequestMapping("/savesupplier")  
    public ModelAndView savesupplierdata(@ModelAttribute Supplier c) {  
        
		supplierDao.savesupplier(c);
        return new ModelAndView("redirect:/viewsupplier"); 
	}
	@RequestMapping("/addsupplier")
	public ModelAndView saveSupplier()
	{
		return new ModelAndView("addsupplier","command",new Supplier());
		
	}
	@RequestMapping("/viewsupplier")
	public ModelAndView viewSupplier(@ModelAttribute Supplier c)
	{
		List<Supplier> list=supplierDao.getallsupplier();
		return new ModelAndView("viewsupplier").addObject("supplierlist", list);
		
	}
	
	@RequestMapping("/editsupplier/{supplierid}")
	public ModelAndView editsupplier(@PathVariable String supplierid)
	{
		Supplier p=supplierDao.getSupplierById(supplierid);		
		ModelAndView model=new ModelAndView("editsupplier","command",p);
		
		return model;
		
	}

	@RequestMapping("/editsavesupplier")  
    public ModelAndView editsavesupplier(@ModelAttribute Supplier c) {  
        supplierDao.updateSupplier(c);
        return new ModelAndView("redirect:/viewsupplier","command",new Supplier());  
	}

	@RequestMapping("/deletesupplier/{supplierid}")
	public ModelAndView  deletesupplier(@PathVariable String supplierid)
	{
		Supplier p=supplierDao.getSupplierById(supplierid);
		supplierDao.deletesupplier(p);
		ModelAndView model=new ModelAndView("redirect:/viewsupplier");
		
		return model;
		
	}
	

}
