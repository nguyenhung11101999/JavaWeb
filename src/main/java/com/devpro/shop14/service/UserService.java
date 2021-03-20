package com.devpro.shop14.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.Users;
import javax.persistence.Query;

@Service
public class UserService {
	
	@PersistenceContext
	protected EntityManager entityManager;

	public Users loadUserByUsername(String userName) {
		try {
			String jpql = "Select u From Users u Where u.username='" + userName + "'";
			Query query = entityManager.createQuery(jpql,  Users.class);
			return (Users) query.getSingleResult();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
