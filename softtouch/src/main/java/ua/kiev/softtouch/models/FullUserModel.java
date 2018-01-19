package ua.kiev.softtouch.models;

public class FullUserModel extends UserModel{
	
	private String firstname;
	
	private String lastname;
	
	private String password;
	
	private String repeatPassword;

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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepeatPassword() {
		return repeatPassword;
	}

	public void setRepeatPassword(String repeatPassword) {
		this.repeatPassword = repeatPassword;
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
