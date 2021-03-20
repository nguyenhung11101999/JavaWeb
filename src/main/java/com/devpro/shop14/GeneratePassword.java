package com.devpro.shop14;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class GeneratePassword {
	public static void main(String[] args) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder(4);
		String result = encoder.encode("minh");
		System.out.println(result);
	}
}
