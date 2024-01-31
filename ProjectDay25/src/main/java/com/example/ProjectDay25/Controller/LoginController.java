package com.example.ProjectDay25.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.ProjectDay25.model.Product;
import com.example.ProjectDay25.model.User;
import com.example.ProjectDay25.repository.ProductRepository;
import com.example.ProjectDay25.repository.UserRepository;

@Controller

public class LoginController {
	
	@Autowired
	UserRepository userrep;
	
	@Autowired
	ProductRepository prodrep;
	
	@RequestMapping("/")
	public ModelAndView getForm()
	{
		return new ModelAndView("LoginForm","Loginobj",new User()) ;
	}
	
	
	
	@RequestMapping("/LoginAction")
	public String getaccess(@ModelAttribute("Loginobj") User u) 
	{
		System.out.println("hello");
		User u1= userrep.getUser(u.getUsername(), u.getUserpassword());
		System.out.println("hell00o");

		if(u1 != null)
		{
			return "success";
		}
		return "incorrect";
	}
	
	
	
	@RequestMapping("/insertForm")
	public ModelAndView productForm()
	{
		return new ModelAndView("ProductForm","Productobj",new Product()) ;
	}
	
	
	@RequestMapping("/insertsuccess")
	public String inserts(@ModelAttribute("Productobj") Product p)
	{
		
		prodrep.save(p);
		return "success";

	}
	
	@RequestMapping("/viewProduct")
	public ModelAndView viewData() { 
	List<Product> prolist = prodrep.findAll();
	return new ModelAndView("ViewProducts","prolist",prolist);			
}
	
	
	@RequestMapping("/updateProduct/{id}")
	public ModelAndView UpDateData(@PathVariable("id") Integer productid) {
		
		Optional<Product> product = prodrep.findById(productid);
			return new ModelAndView("UpdateForm", "upobj", product );
		
	}
	
	@RequestMapping("/updateProduct/updateFormsuccess")
	public String updateFormsuccess(@ModelAttribute("upobj") Product p)
	{
		prodrep.save(p);
		return "redirect:/viewProduct";

	}
	
	
	@RequestMapping("/deleteProduct")
	public String delete(@RequestParam("id") Integer productid)
	{
		prodrep.deleteById(productid);
		return "redirect:/viewProduct";
	}
	
	
	
	
	
	
	
	
}
