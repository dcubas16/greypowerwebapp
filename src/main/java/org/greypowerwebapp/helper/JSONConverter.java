package org.greypowerwebapp.helper;

import java.io.File;
import java.io.IOException;
import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;

public class JSONConverter {

	private Object object;

	ObjectMapper mapper = new ObjectMapper();

	public JSONConverter() {

	}

	public JSONConverter(Object object) {
		this.object = object;
	}

	public String convertObjectToJSON() {
		try {

			// convert user object to json string,
//			mapper.writeValue(new File("../test.json"), getObject());
			return mapper.writeValueAsString(getObject());

		} catch (JsonGenerationException e) {

			e.printStackTrace();

		} catch (JsonMappingException e) {

			e.printStackTrace();

		} catch (IOException e) {

			e.printStackTrace();

		}
		
		return null;
	}

	public Object getObject() {
		return object;
	}

	public void setObject(Object object) {
		this.object = object;
	}

}
