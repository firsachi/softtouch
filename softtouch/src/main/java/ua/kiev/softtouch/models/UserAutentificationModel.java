package ua.kiev.softtouch.models;

import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

@Component
public class UserAutentificationModel implements UserDetails{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -427677379141817633L;
	
	private String username;
	
	private String password;
	
	private String companyName;
	
	private List<? extends GrantedAuthority> suthorities;
	
	public String getCompanyName() {
		return companyName;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return suthorities;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return username;
	}

	@Override
	public boolean isAccountNonExpired() {
		return false;
	}

	@Override
	public boolean isAccountNonLocked() {
		return false;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return false;
	}

	@Override
	public boolean isEnabled() {
		return false;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public void setSuthorities(List<GrantedAuthority> suthorities) {
		this.suthorities = suthorities;
	}
}
