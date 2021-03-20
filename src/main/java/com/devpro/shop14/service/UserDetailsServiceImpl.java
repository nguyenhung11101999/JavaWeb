package com.devpro.shop14.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.Users;

@Service
public class UserDetailsServiceImpl implements UserDetailsService{
	@Autowired
	UserService userService;

	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Users user = userService.loadUserByUsername(username);
		System.out.println("user name : " + user.getUsername());
		return user;
	}
}
