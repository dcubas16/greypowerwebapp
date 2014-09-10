package org.greypowerwebapp.controller;

import java.rmi.RemoteException;

import org.greypowerwebapp.services.client.CreateChemicalProductServiceStub;
import org.greypowerwebapp.services.client.CreateChemicalProductServiceStub.ChemicalProduct;
import org.greypowerwebapp.services.client.CreateChemicalProductServiceStub.CreateChemicalProductRequest;
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
		return "createChemicalProduct";
	}
	
	@RequestMapping(value="saveChemicalProduct.htm", method=RequestMethod.GET )
	public String saveChemicalProduct(Model model) throws RemoteException
	{
		CreateChemicalProductServiceStub createChemicalProductServiceStub = new CreateChemicalProductServiceStub("http://localhost:8081/greypowerservices/endpoints/CreateChemicalProductService.wsdl");
		CreateChemicalProductRequest createChemicalProductRequest = new CreateChemicalProductRequest();
		
		ChemicalProduct chemicalProduct = new ChemicalProduct();
		chemicalProduct.setName("Prod Service");
		chemicalProduct.setDescription("Prod Service");
		chemicalProduct.setUnitPrice(123);
		chemicalProduct.setId(200L);
		chemicalProduct.setUnitOfMeasure("Hi");
		chemicalProduct.setImagePath("HI");
		
		
		createChemicalProductRequest.setChemicalProduct(chemicalProduct);
		createChemicalProductServiceStub.createChemicalProduct(createChemicalProductRequest);
//		WebServiceClientUtils.logCreateChemicalProduct(createChemicalProductResponse.getId());
		return "home";
	}
}