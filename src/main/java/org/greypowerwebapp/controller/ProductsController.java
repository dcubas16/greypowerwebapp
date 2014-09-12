package org.greypowerwebapp.controller;

import java.rmi.RemoteException;

import org.greypowerwebapp.webservices.client.GetUnitMeasureStub;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Products/")
public class ProductsController {
	
	@RequestMapping(value="createChemicalProduct.htm", method=RequestMethod.GET )
	public String createChemicalProduct(Model model) throws RemoteException
	{
//		CreateChemicalProductServiceStub createChemicalProductServiceStub = new CreateChemicalProductServiceStub("http://localhost:8081/greypowerservices/endpoints/GetUnitMeasure.wsdl");
//		CreateChemicalProductRequest createChemicalProductRequest = new CreateChemicalProductRequest();
//		
//		createChemicalProductServiceStub.
//		
//		model.addAttribute("unitsMeasure", );
		
		GetUnitMeasureStub getUnitMeasureStub = new GetUnitMeasureStub("http://localhost:8081/greypowerservices/endpoints/GetUnitMeasure.wsdl");
		GetUnitMeasureRequest getUnitMeasureRequest = new GetUnitMeasureRequest();
		
		getUnitMeasureStub.getUnitMeasure(getUnitMeasureRequest);
		
		return "createChemicalProduct";
	}
	
}