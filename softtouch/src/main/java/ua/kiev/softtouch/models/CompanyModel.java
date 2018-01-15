package ua.kiev.softtouch.models;

public class CompanyModel {
	
	private int id;
	
	private String comanyname;
	
	private int idSubdivision;
	
	private boolean disable;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getComanyname() {
		return comanyname;
	}

	public void setComanyname(String comanyname) {
		this.comanyname = comanyname;
	}

	public int getIdSubdivision() {
		return idSubdivision;
	}

	public void setIdSubdivision(int idSubdivision) {
		this.idSubdivision = idSubdivision;
	}

	public boolean isDisable() {
		return disable;
	}

	public void setDisable(boolean disable) {
		this.disable = disable;
	}

}
