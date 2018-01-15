package ua.kiev.softtouch.models;

import javax.validation.constraints.NotBlank;

import ua.kiev.softtouch.validations.NotExistingSubdivisionName;

public class SubdivisionModel {
	
	private int id;
	
	@NotBlank(message = "{error.null}")
	@NotExistingSubdivisionName(message = "{error.ismatches}")
	private String name;
	
	private boolean disable;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public boolean isDisable() {
		return disable;
	}

	public void setDisable(boolean disable) {
		this.disable = disable;
	}
	
	
	
}
