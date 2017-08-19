package com.niit.controllers;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.Dao.AddProductDao;
import com.niit.Dao.CategoryDao;
import com.niit.Dao.UserDao;
import com.niit.model.AddProduct;
import com.niit.model.Category;
import com.niit.model.Registration;
import com.niit.model.Size;
import com.niit.model.Supplier;
import com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.Binding;

@Controller
public class AdminController 
{
	@Autowired
	AddProductDao addProductDao;
	@Autowired
	UserDao userDao;
	@Autowired
	CategoryDao  categoryDao;
	
	
	
	
	
	
	
	
	@RequestMapping("/admin")
	public ModelAndView adminhomepage(){
		
		ModelAndView model=new ModelAndView("admin");
		
		return model;
		
	}
	
	@RequestMapping("/adminlogin")
	public ModelAndView adminloginpage(){
		
		ModelAndView model=new ModelAndView("adminloginpage");
		
		return model;
		
	}
	
	
	@RequestMapping("/size")
	public ModelAndView sizepage(){
		
		ModelAndView model=new ModelAndView("size","command",new Size());
		
		return model;
		
	}
	
	@RequestMapping("/savesize")  
    public ModelAndView savesizedata(@ModelAttribute Size s) {  
        
		categoryDao.savesize(s);
        return new ModelAndView("redirect:/admin"); 
	}
	
	
	
	@RequestMapping("/viewproduct")
	public ModelAndView viewproduct()
	{
		List<AddProduct> list=addProductDao.getallproduct();		
		ModelAndView model=new ModelAndView("viewproduct").addObject("productlist", list);
		
		return model;
		
	}
	@RequestMapping("/editproduct/{productid}")
	public ModelAndView editproduct(@PathVariable String productid)
	{
		
	 	AddProduct p=addProductDao.getProductById(productid);		
		ModelAndView model=new ModelAndView("editproduct","command",p);
		return model;
		
	}

	@RequestMapping("/editsave")  
    public ModelAndView editsaveproduct(@ModelAttribute AddProduct p) {  
        addProductDao.updateProduct(p);
        return new ModelAndView("redirect:/viewproduct","command",new AddProduct());  
	}

	@RequestMapping("/delete/{productid}")
	public ModelAndView  deleteproduct(@PathVariable String productid)
	{
		AddProduct p=addProductDao.getProductById(productid);
		addProductDao.deleteProduct(p);
		ModelAndView model=new ModelAndView("redirect:/viewproduct");
		
		return model;
		
	}
	
	@RequestMapping("/showuser")
	public ModelAndView showuser()
	{
		
		List<Registration> list= userDao.getalluserrole();
		
		   Gson g=new Gson();
		   String data=g.toJson(list);
		   System.out.println("json format data "+data);
		   
		   
		   return new ModelAndView("showuser").addObject("listp", data);
		   
			  
		   
     }
	
	@RequestMapping("/deleteuser/{username}")
	public ModelAndView deleteuser(@PathVariable String username)
	{
		Registration p=userDao.getUserByname(username);
		userDao.deleteUser(p);
		ModelAndView model=new ModelAndView("redirect:/showuser");
		
		return model;
		
	}
	
	
	@RequestMapping(value = "/saveproduct", method = RequestMethod.GET)
	public String viewLogin(Map<String, Object> model) {
		com.niit.model.AddProduct addProduct = new AddProduct();
		model.put("command", addProduct);
		return "addproduct";
	}
	
	@RequestMapping("/addproduct")
	public ModelAndView viewLoginpage() {
		ModelAndView model=new ModelAndView("addproduct","command",new AddProduct());
		List<Category> listc=addProductDao.getAllCategories();
		List<Supplier> lists=addProductDao.getAllSuppliers();
		List<Size>  listsi=categoryDao.getallsize();
		model.addObject("listCategory", listc);
		model.addObject("listSupplier", lists);
		model.addObject("listSize", listsi);
		return model;
	}
	
	

	@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
	public ModelAndView doLogin(@Valid @ModelAttribute("command") com.niit.model.AddProduct product,
			BindingResult result, Map<String, Object> model) {

		if (result.hasErrors()) {
			return  new ModelAndView("addproduct");
		}

		String filename=null;
		byte[] arr;
		if(!product.getFile().isEmpty())
		{
			try{
		arr=product.getFile().getBytes();
		addProductDao.saveProduct(product);
		System.out.println("Insert product:"+product);
		String path="D:/DTJava3/EcommerceDemo2/src/main/webapp/resources/images/"+product.getProductid()+".jpg";
		File f=new File(path);
		System.out.println("file path"+path);
		BufferedOutputStream bf=new BufferedOutputStream(new FileOutputStream(f));
		bf.write(arr);
		bf.close();
		System.out.println("Image Uploaded");
		
		}
			catch(Exception e){System.out.println(e.getMessage());}
		}
		
		return new ModelAndView("redirect:/viewproduct");
	}
}
