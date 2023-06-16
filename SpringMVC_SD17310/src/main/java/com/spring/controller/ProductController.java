package com.spring.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.entity.Cart;
import com.spring.entity.Category;
import com.spring.entity.Product;
import com.spring.repository.CategoryRepository;
import com.spring.repository.ProductRepository;
import com.spring.service.ProductService;

@Controller
@RequestMapping("/product/")
public class ProductController {

	@Autowired
	private ServletContext context;

	@Autowired
	private ProductRepository productRepository;

	@Autowired
	private CategoryRepository categoryRepository;

	@Autowired
	private ProductService productService;

	@ModelAttribute("categories")
	public List<Category> getAllCategory() {
		return categoryRepository.findAll();
	}

	@GetMapping("/list")
	public String productListPage(Model model,
			@RequestParam(name = "pageNum", required = false, defaultValue = "1") Integer pageNum,
			@RequestParam(name = "pageSize", required = false, defaultValue = "3") Integer pageSize) {
		Pageable pageable = PageRequest.of(pageNum - 1, pageSize);
		Page<Product> page = productRepository.findAll(pageable);

		model.addAttribute("products", page.getContent());
		model.addAttribute("totalPage", page.getTotalPages());
		return "product_list_user";
	}

	@GetMapping("/detail/{id}")
	public String detailPage(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("product", productRepository.findById(id).orElse(null));
		return "product/detail";
	}
	
	@GetMapping("/detail-cart/{id}")
	public String detailCart(@PathVariable("id") Integer id, Model model) {
		model.addAttribute("product", productRepository.findById(id).orElse(null));
		return "product/detail-cart";
	}

	@GetMapping("/view-add")
	public String viewAdd() {
		return "product/add";
	}

	@GetMapping("/showProduct")
	public String show(Model model, @RequestParam(defaultValue = "0", name = "page") Integer number) {
		Pageable pageable = PageRequest.of(number, 3);
		Page<Product> products = productRepository.findAll(pageable);
		model.addAttribute("products", products);
		return "product/show";
	}

	// Add product
	@PostMapping("/add")
	public String productSave(@Valid @ModelAttribute("product") Product product, BindingResult result, Model model,
			RedirectAttributes attributes, @RequestParam("imageCategory") MultipartFile file) {
		if (result.hasErrors()) {
			return "product/list";
		}

		// logic upload file
		String fileOriginal = file.getOriginalFilename();
		String fileDest = context.getRealPath("/upload/" + fileOriginal);
		System.out.println(fileDest);

		try {
			file.transferTo(new File(fileDest));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		product.setImage(fileOriginal);
		productService.save(product);
		return ("redirect:/product/showProduct");
	}

	// Update
	@PostMapping("update/{id}")
	public String productUpdate(@ModelAttribute("updateProduct") Product product, Model model,
			@PathVariable(name = "id") Integer id) {
		Optional<Product> pro = productService.findById(id);
		productService.save(product);
		return ("redirect:/product/showProduct");
	}

	// Delete product
	@GetMapping("/list/delete/{id}")
	public String deleteProduct(@ModelAttribute("updateProduct") Product product, Model model,
			@PathVariable(name = "id") Integer id) {
		Optional<Product> pro = productService.findById(id);
		productService.deleteById(id);
		return ("redirect:/product/showProduct");
	}


}
