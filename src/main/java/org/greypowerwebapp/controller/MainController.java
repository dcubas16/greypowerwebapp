package org.greypowerwebapp.controller;

import java.util.Map;

import org.greypowerwebapp.model.EmailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {
	
	@RequestMapping(value="home.htm", method=RequestMethod.GET )
	public String home(Model model)
	{
		return "home";
	}
	
	@RequestMapping(value="products.htm", method=RequestMethod.GET )
	public String products(Model model)
	{
		return "products";
	}
	
	@RequestMapping(value="aboutus.htm", method=RequestMethod.GET )
	public String aboutus(Model model)
	{
		return "aboutus";
	}
	
	@RequestMapping(value="productsList.htm", method=RequestMethod.GET )
	public String productsList(Model model)
	{
		return "productsList";
	}
	
	@RequestMapping(value="viewProducts.htm", method=RequestMethod.GET )
	public String viewProducts(Model model)
	{
		return "viewProducts";
	}
	
	@RequestMapping(value="contact.htm", method=RequestMethod.GET )
	public String contact(Map<String, Object> model)
	{
		EmailMessage emailMessage = new EmailMessage();
		model.put("emailSender", emailMessage);
		
		return "contact";
	}
	
	@RequestMapping(value="services.htm", method=RequestMethod.GET )
	public String services(Model model)
	{
		return "services";
	}
}