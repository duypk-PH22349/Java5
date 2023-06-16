package com.spring.jobs;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.spring.entity.StatusEum;
import com.spring.repository.ProductRepository;

@Component
@EnableScheduling
public class UpdateActiveProduct {
	
	@Autowired
	private ProductRepository productRepository;
	
	@Scheduled(cron = "0 0 0 * * *")
	public void checkActiveByExpDate(){
		System.err.println("checkActiveByExpDate START...........");
		
		System.out.println("Today is : " + new Date());
		
		StatusEum nonActive = StatusEum.NON_ACTIVE;
		int rows = productRepository.updateStatusByExpDate(nonActive, new Date());
		
		System.out.println("Updated row : " + rows);
		System.err.println("checkActiveByExpDate END...........");
	}

}
