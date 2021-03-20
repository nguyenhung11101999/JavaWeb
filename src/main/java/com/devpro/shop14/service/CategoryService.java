package com.devpro.shop14.service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.shop14.Utilities;
import com.devpro.shop14.entities.Categories;
import com.devpro.shop14.repository.CategoryRepository;

@Service
public class CategoryService {

	@Autowired
	private CategoryRepository categoriesRepository;

	@PersistenceContext
	EntityManager entityManager;

	@Transactional(rollbackOn = Exception.class)
	public void saveOrUpdate(Categories categories) throws Exception {
		try {
			System.out.println("categories id update: " + categories.getId());
			
			categories.setSeo(Utilities.seo(categories.getName().toLowerCase()) + "-" + System.currentTimeMillis());
			System.out.println("seo : " + categories.getSeo());
			categoriesRepository.save(categories);

		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

	public void delete(Integer id) {
		System.out.println("===delete:" + id);
		try {
			categoriesRepository.deleteById(id);
		} catch (Exception e) {

			System.out.println("===e:" + e);
			e.printStackTrace();

		}

	}
}
