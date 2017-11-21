package ua.kiev.softtouch.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

@Service
public class ServiceAuthenticationProvider implements AuthenticationProvider {
	
	@Autowired
	private UserBaseService userBaseService;

	@Override
	public Authentication authenticate(Authentication authentication) throws AuthenticationException {
		String username = authentication.getName();
		String password = authentication.getCredentials().toString();
		UserDetails user = null;
		if (username == null 
				|| username.length() == 0
				|| password.length() <= 5) {
			throw new BadCredentialsException("Username not found.");
		}else {
			user = userBaseService.loadUserByUsername(username);
		}
		
		return new UsernamePasswordAuthenticationToken(user, password, user.getAuthorities());
	}

	@Override
	public boolean supports(Class<?>  authentication) {
		return authentication.equals(
		          UsernamePasswordAuthenticationToken.class);
	}

}
