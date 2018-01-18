package ua.kiev.softtouch.models;

public class FullUserModel extends UserModel{
	
	private String firstname;
	
	private String lastname;
	
	private int idSubdivision;
	
	private int idRole;

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getIdSubdivision() {
		return idSubdivision;
	}

	public void setIdSubdivision(int idSubdivision) {
		this.idSubdivision = idSubdivision;
	}

	public int getIdRole() {
		return idRole;
	}

	public void setIdRole(int idRole) {
		this.idRole = idRole;
	}
	
}
