package com.spring;

import java.util.Date;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import com.spring.entity.Category;
import com.spring.entity.Product;
import com.spring.repository.ProductRepository;

@SpringBootTest
class SpringMvcSd17310ApplicationTests {
	
	@Autowired
	ProductRepository productRepository;

	@Test
	void contextLoads() {
		List<Product> products = productRepository.findByExpDateJPQL(new Date());
		System.err.println("Size: " + products.size());
	}
	
	@Test
	void findByCategory() {
		Category category = new Category();
		category.setId(1004);
		
		Pageable pageable = PageRequest.of(0, 2);
		
		Page<Product> page = productRepository.findByCategory(category, pageable);
		System.err.println("item page1: " + page.getContent().size());
		System.err.println("total page: " + page.getTotalPages());
	}
	
	@Test
	void findByCategoryID() {
//		Category category = new Category();
//		category.setId(1004);
		Pageable pageable = PageRequest.of(0, 2);
		
		Page<Product> page = productRepository.findByCategoryIdJPQL(1004, pageable);
		System.err.println("item page1: " + page.getContent().size());
		System.err.println("total page: " + page.getTotalPages());
	}


}
