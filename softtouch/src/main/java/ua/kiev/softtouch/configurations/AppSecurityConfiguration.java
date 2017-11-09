package ua.kiev.softtouch.configurations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class AppSecurityConfiguration extends WebSecurityConfigurerAdapter{
	
	@Autowired
    private AuthenticationProvider tokenAuthentication;
	
	@Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(tokenAuthentication);
    }
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		System.out.println(1);
        http
            .authorizeRequests()
            	.antMatchers("/").permitAll()
            	.antMatchers("/registration", "/addUser").permitAll()
            	.antMatchers("/resources/**").permitAll()
            	.antMatchers("/home/**").access("hasRole('user')")
            	.anyRequest().authenticated()
                .and()
            .formLogin()
            	.loginPage("/login")
            	.failureUrl("/login?error")
            	.usernameParameter("username")
            	.passwordParameter("password")
            	.permitAll()
            	.and()
            .logout()
            	.logoutSuccessUrl("/")
            	.permitAll()
            	.and()
            .csrf()
            	.disable();
        
    }

}
