package com.spring.service;

 
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import com.spring.entity.CartItem;

@Service
@SessionScope
public class ShoppingCartService implements IShoppingCartService{
    Map<Integer, CartItem> maps = new HashMap<>(); 
    @Override
    public  void add(CartItem item){
        CartItem cartItem = maps.get(item.getId());
        if(cartItem == null){
            maps.put(item.getId(), item);

        }else{
            cartItem.setQty(cartItem.getQty() + item.getQty());
        }

    }
    @Override
    public void remove(int id){
        maps.remove(id);
    }
    @Override
    public CartItem update(int idProduct, int qty){
        CartItem cartItem = maps.get(idProduct);
        cartItem.setQty(qty);
        return  cartItem;
    }
    @Override
    public void clear(){
        maps.clear();
    }
    @Override
    public Collection<CartItem> getAllItems(){
        return maps.values();
    }
    @Override
    public int getCount(){
        return maps.values().size();

    }
    @Override
    public double getAmount(){
        return maps.values().stream().mapToDouble(item -> item.getQty()*item.getPrice()).sum();
    }
    
    public List<CartItem> getCartItems() {
        return new ArrayList<>(maps.values());
    }
}
