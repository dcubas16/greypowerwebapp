package org.greypowerwebapp.controller;

import java.rmi.RemoteException;

import org.greypowerwebapp.helper.ServicesNames;
import org.greypowerwebapp.model.UnitsMeasure;
import org.greypowerwebapp.webservices.client.CreateChemicalProductServiceStub;
import org.greypowerwebapp.webservices.client.CreateChemicalProductServiceStub.ChemicalProduct;
import org.greypowerwebapp.webservices.client.CreateChemicalProductServiceStub.CreateChemicalProductRequest;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureRequest;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("Products/")
public class ProductsController {

	@RequestMapping(value = "createChemicalProduct.htm", method = RequestMethod.GET)
	public String createChemicalProduct(Model model) throws RemoteException {

		UnitsMeasure unitsMeasure = new UnitsMeasure();

		GetUnitMeasureStub getUnitMeasureStub = new GetUnitMeasureStub(ServicesNames.getUnitMeasuresService);
		
		GetUnitMeasureRequest getUnitMeasureRequest = new GetUnitMeasureRequest();

		GetUnitMeasureResponse getUnitMeasureResponse = getUnitMeasureStub
				.getUnitMeasure(getUnitMeasureRequest);

		unitsMeasure.converToUnitsMeasure(getUnitMeasureResponse
				.getGetUnitMeasureResponseSequence());

		model.addAttribute("unitsMeasure", unitsMeasure.getAsJSON());

		return "createChemicalProduct";
	}

	@RequestMapping(value="saveChemicalProduct.htm", method=RequestMethod.POST )
	public String saveChemicalProduct(@ModelAttribute("chemicalProduct") org.greypowerwebapp.model.ChemicalProduct chemicalProduct) throws RemoteException
	{
		CreateChemicalProductServiceStub createChemicalProductServiceStub = new CreateChemicalProductServiceStub(ServicesNames.createChemicalProductService);
		CreateChemicalProductRequest createChemicalProductRequest = new CreateChemicalProductRequest();

		ChemicalProduct chemicalProductAux = new ChemicalProduct();
		chemicalProductAux.setName(chemicalProduct.getName());
		chemicalProductAux.setDescription(chemicalProduct.getDescription());
		chemicalProductAux.setUnitPrice(chemicalProduct.getPrice());
		chemicalProductAux.setId(200L);
		chemicalProductAux.setUnitOfMeasure("Hi");
		chemicalProductAux.setImagePath("HI");


		createChemicalProductRequest.setChemicalProduct(chemicalProductAux);
		createChemicalProductServiceStub.createChemicalProduct(createChemicalProductRequest);
//		WebServiceClientUtils.logCreateChemicalProduct(createChemicalProductResponse.getId());
		return "home";
	}
}