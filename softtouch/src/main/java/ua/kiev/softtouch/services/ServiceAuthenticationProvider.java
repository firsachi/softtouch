package ua.kiev.softtouch.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
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
		
		if (username == null 
				|| username.length() == 0
				|| password.length() <= 5) {
			throw new BadCredentialsException("Username not found.");
		}
		Md5PasswordEncoder md = new Md5PasswordEncoder();
		password = md.encodePassword(password, null);

		UserDetails user = userBaseService.loadUserByUsername(username);
		if (null == user ) {
			throw new BadCredentialsException("Username not found.");
		}
		
		if(user.isAccountNonExpired()) {
			throw new BadCredentialsException("User is disabled");
		}
		
		return new UsernamePasswordAuthenticationToken(user, password, user.getAuthorities());
	}

	@Override
	public boolean supports(Class<?>  authentication) {
		return authentication.equals(
		          UsernamePasswordAuthenticationToken.class);
	}

}
