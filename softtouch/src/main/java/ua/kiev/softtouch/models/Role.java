package ua.kiev.softtouch.models;

import org.springframework.security.core.GrantedAuthority;

public class Role implements GrantedAuthority{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1650149826414686898L;
	
	private String nameRole;
	
	public Role(String nameRole) {
		super();
		this.nameRole = nameRole;
	}

	@Override
	public String getAuthority() {
		return nameRole;
	}

}
