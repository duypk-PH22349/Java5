package com.spring.controller;

 
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import javax.mail.FetchProfile.Item;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.entity.CartItem;
import com.spring.entity.Product;
 import com.spring.service.IShoppingCartService;
import com.spring.service.ProductService;
import com.spring.service.ShoppingCartService;

@Controller
@RequestMapping("/shopping-cart")
public class ShoppingCartController {
    @Autowired
    ProductService productService;
    @Autowired
    ShoppingCartService cartService;
    
    
    @GetMapping("/view")
    public String viewCart(Model model){
        model.addAttribute("sanPhamTrongGio",cartService.getAllItems());
        model.addAttribute("total",cartService.getAmount());
        return "/product/cart";
    }


    
    @RequestMapping("add/{idProduct}")
    public String addItemToCart(@PathVariable("idProduct") Integer id, @RequestParam("quantity") Integer quantity, Model model){
        Optional<Product> product = productService.findById(id);
    if(product.isPresent()) {
    	if(quantity > 0) {
    		CartItem itemToAdd = null;
    		List<CartItem> cartItems = cartService.getCartItems();
    		
    		for (CartItem item : cartItems) {
				if(item.getId() == product.get().getId()) {
					itemToAdd = item;
					break;
				}
			}
    		if(itemToAdd == null) {
    			itemToAdd = new CartItem();
    			itemToAdd.setId(product.get().getId());
    			itemToAdd.setName(product.get().getName());
    			itemToAdd.setPrice(product.get().getPrice());
    			itemToAdd.setQty(quantity);
    			cartService.add(itemToAdd);
    		}else {
				itemToAdd.setQty(itemToAdd.getQty() + quantity);
				cartService.update(itemToAdd.getId(), itemToAdd.getQty());
			}
    	}
    }
     
        
        return "redirect:/shopping-cart/view";
    }
    
    @GetMapping("/clear")
    public String clearCart(){
        cartService.clear();
        return "redirect:/shopping-cart/view";
    }
    @GetMapping("/delete/{idProduct}")
    public String removeItemCart(@PathVariable("idProduct") Integer id){
        cartService.remove(id);
        return "redirect:/shopping-cart/view";

    }
    @PostMapping("/update")
    public String update(@RequestParam("id") Integer id,@RequestParam("qty") Integer qty){
        cartService.update(id,qty);
        return "redirect:/shopping-cart/view";
    }
    
    
    
    
    @GetMapping("/bill")
    public String viewBill(Model model) {
    	 model.addAttribute("sanPhamTrongGio", cartService.getAllItems());
         model.addAttribute("total", cartService.getAmount());
    	return "/product/bill";
    }
    
    
}
