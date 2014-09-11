package org.greypowerwebapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Products/")
public class ProductsController {
	
	@RequestMapping(value="createChemicalProduct.htm", method=RequestMethod.GET )
	public String createChemicalProduct(Model model)
	{
//		CreateChemicalProductServiceStub createChemicalProductServiceStub = new CreateChemicalProductServiceStub("http://localhost:8081/greypowerservices/endpoints/GetUnitMeasure.wsdl");
//		CreateChemicalProductRequest createChemicalProductRequest = new CreateChemicalProductRequest();
//		
//		createChemicalProductServiceStub.
//		
//		model.addAttribute("unitsMeasure", );
		return "createChemicalProduct";
	}
	
}