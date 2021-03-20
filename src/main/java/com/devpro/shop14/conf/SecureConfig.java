package com.devpro.shop14.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableWebSecurity
public class SecureConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsService userDetailsService;

	@Override
	protected void configure(final HttpSecurity http) throws Exception {
		http.csrf().disable().authorizeRequests()

				.antMatchers("/css/**", "/js/**", "/images/**", "/backend/**", "/upload/**").permitAll()

				.antMatchers("/admin/**", "/adminindex", "/forms", "/addproduct", "/table", "/editproduct",
						"/deleteproduct")
				.hasAnyAuthority("ADMIN")

				.and()

				.formLogin().loginPage("/login").loginProcessingUrl("/perform_login").defaultSuccessUrl("/home", true)
				.failureUrl("/login?login_error=true").permitAll()

				.and()

				.logout().logoutUrl("/logout").logoutSuccessUrl("/home").invalidateHttpSession(true)
				.deleteCookies("JSESSIONID").permitAll();
	}

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder(4));
	}
}
