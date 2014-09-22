package org.greypowerwebapp.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.greypowerwebapp.webservices.client.GetChemicalProductsStub.GetChemicalProductsResponseSequence;

public class ChemicalProducts {

	private List<ChemicalProduct> chemicalProducts = new ArrayList<ChemicalProduct>();


	public void converToChemicalProducts(
			GetChemicalProductsResponseSequence[] sequence) {

		for (GetChemicalProductsResponseSequence list : sequence) {
			ChemicalProduct chemicalProduct = new ChemicalProduct(list
					.getChemicalProduct().getId(), list.getChemicalProduct()
					.getName(), list.getChemicalProduct().getDescription(),
					list.getChemicalProduct().getUnitMeasure_id(), list
							.getChemicalProduct().getUnitPrice(), list
							.getChemicalProduct().getImagePath());
			chemicalProducts.add(chemicalProduct);
		}
	}

	@JsonIgnore
	public String getAsJSON() {
		ObjectMapper mapper = new ObjectMapper();
		try {
			return mapper.writeValueAsString(this.getChemicalProducts());
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public List<ChemicalProduct> getChemicalProducts() {
		return chemicalProducts;
	}

	public void setChemicalProducts(List<ChemicalProduct> chemicalProducts) {
		this.chemicalProducts = chemicalProducts;
	}

}
