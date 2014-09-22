package org.greypowerwebapp.model;

import org.springframework.stereotype.Component;

@Component(value = "chemicalProduct")
public class ChemicalProduct {

	private Long id;

	private String name;

	private String description;
	
	private Long unitMeasureId;
	
	private double price;
	
	private String imagePath;
	
	public ChemicalProduct(){}
	
	public ChemicalProduct(String name, String description, Long unitMeasureId, double price, String imagePath){
		this.name = name;
		this.description = description;
		this.unitMeasureId = unitMeasureId;
		this.price = price;
		this.setImagePath(imagePath);
		
	}
	
	public ChemicalProduct(Long id, String name, String description, Long unitMeasureId, double price, String imagePath){
		this.id = id;
		this.name = name;
		this.description = description;
		this.unitMeasureId = unitMeasureId;
		this.price = price;
		this.setImagePath(imagePath);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getUnitMeasureId() {
		return unitMeasureId;
	}

	public void setUnitMeasureId(Long unitMeasureId) {
		this.unitMeasureId = unitMeasureId;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

}
