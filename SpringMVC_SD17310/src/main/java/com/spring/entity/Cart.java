package com.spring.entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart {
	  private List<CartItem> items = new ArrayList<CartItem>();
	 private Map<Integer, Integer> danhSachSanPham = new HashMap<>();
	    public Map<Integer, Integer> getDanhSachSanPham(){
	        return danhSachSanPham;
	    }
	    public void setDanhSachSanPham(Map<Integer,Integer>danhSachSanPham){
	        this.danhSachSanPham = danhSachSanPham;
	    }
	    
	    public double getTotal() {
	        double total = 0;
	        for (CartItem item : items) {
	            total += item.getPrice() * item.getQty();
	        }
	        return total;
	    }
}
