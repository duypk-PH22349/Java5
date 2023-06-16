package com.spring.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.spring.entity.Category;
import com.spring.entity.Product;
import com.spring.entity.StatusEum;

@javax.transaction.Transactional
@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>{

	List<Product> findByExpDateBefore(Date today);
	
	//JPQL
	@Query("SELECT p FROM Product p WHERE p.expDate < ?1")
	List<Product> findByExpDateJPQL(Date today);
	
	//SQL navtive
	@Query(value = "SELECT * FROM Product WHERE expDate < ?1", nativeQuery = true)
	List<Product> findByExpDateNative(Date today);
	
	
	
	Page<Product> findByCategory(Category category, Pageable pageable);
	
	@Query("SELECT p FROM Product p WHERE p.category.id = ?1")
	Page<Product> findByCategoryIdJPQL(Integer categoryId, Pageable pageable);

	@Modifying
	@Query("UPDATE Product SET status = ?1 WHERE expDate < ?2")
	int updateStatusByExpDate(StatusEum status, Date date);
	
}
