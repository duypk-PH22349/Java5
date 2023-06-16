package com.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.entity.Category;
import com.spring.entity.Product;
import com.spring.repository.CategoryRepository;
import com.spring.repository.ProductRepository;

@Controller
public class CategoryController {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	@ModelAttribute("categories")
	public List<Category> getAllCategory() {
		return categoryRepository.findAll();
	}
	
	@GetMapping("/category/{id}/product")
	public String productListPage(Model model, 
			@PathVariable("id") Integer categoryId,
			@RequestParam(name = "pageNum", required = false, defaultValue = "1") Integer pageNum,
			@RequestParam(name = "pageSize", required = false, defaultValue = "3") Integer pageSize
	) {
		Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
		
		Category category = new Category();
		category.setId(categoryId);
		Page<Product> page = productRepository.findByCategory(category, pageable);
		
		model.addAttribute("products", page.getContent());
		model.addAttribute("totalPage", page.getTotalPages());
		return "product/list";
	}

}
