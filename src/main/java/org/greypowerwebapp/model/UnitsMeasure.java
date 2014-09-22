package org.greypowerwebapp.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.annotate.JsonIgnore;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.greypowerwebapp.webservices.client.GetUnitMeasureStub.GetUnitMeasureResponseSequence;

public class UnitsMeasure {

	private List<UnitMeasure> unitsMeasure = new ArrayList<UnitMeasure>();

	public List<UnitMeasure> getUnitsMeasure() {
		return unitsMeasure;
	}

	public void setUnitsMeasure(List<UnitMeasure> unitsMeasure) {
		this.unitsMeasure = unitsMeasure;
	}

	public void converToUnitsMeasure(GetUnitMeasureResponseSequence[] sequence) {

		for (GetUnitMeasureResponseSequence list : sequence) {
			UnitMeasure unitMeasure = new UnitMeasure(list.getUnitMeasure()
					.getId(), list.getUnitMeasure().getName(), list
					.getUnitMeasure().getAbbreviation());
			unitsMeasure.add(unitMeasure);
		}
	}

	@JsonIgnore
	public String getAsJSON() {
		ObjectMapper mapper = new ObjectMapper();
		try {
			return mapper.writeValueAsString(this.getUnitsMeasure());
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

}
