package ua.kiev.softtouch.models;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Component;

import ua.kiev.model.entities.User;

@Component
public class UserAutentificationModel implements UserDetails{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -427677379141817633L;
	
	private User user;
	
	public UserAutentificationModel() {
		super();
		if (null == user) {
			user = new User();
		}
	}

	public UserAutentificationModel(User user) {
		super();
		this.user = user;
	}
	
	public String getCompanyName() {
		return user.getCompanyName();
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		authorities.add(new Role(user.getRole().getNameRole()));
		return authorities;
	}

	@Override
	public String getPassword() {
		return user.getPassword();
	}

	@Override
	public String getUsername() {
		return user.getUsername();
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

}
