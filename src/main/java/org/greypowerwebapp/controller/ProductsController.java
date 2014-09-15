package org.greypowerwebapp.controller;

import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

import org.greypowerwebapp.model.UnitMeasure;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureRequest;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureResponse;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureResponseSequence;
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
		List<UnitMeasure> unitMeasures = new ArrayList<UnitMeasure>();
		
		GetUnitMeasureStub getUnitMeasureStub = new GetUnitMeasureStub("http://localhost:8081/greypowerservices/endpoints/GetUnitMeasure.wsdl");
		GetUnitMeasureRequest getUnitMeasureRequest = new GetUnitMeasureRequest();
		
		GetUnitMeasureResponse getUnitMeasureResponse = getUnitMeasureStub.getUnitMeasure(getUnitMeasureRequest);
		
		for (GetUnitMeasureResponseSequence list  : getUnitMeasureResponse.getGetUnitMeasureResponseSequence()) {
			UnitMeasure unitMeasure = new UnitMeasure();
			unitMeasure.setId(list.getUnitMeasure().getId());
			unitMeasure.setName(list.getUnitMeasure().getName());
			unitMeasure.setAbbreviation(list.getUnitMeasure().getAbbreviation());
			unitMeasures.add(unitMeasure);
		}
		
		model.addAttribute("unitsMeasure", unitMeasures);
		model.addAttribute("prueba", 1);
		
		return "createChemicalProduct";
	}
	
}