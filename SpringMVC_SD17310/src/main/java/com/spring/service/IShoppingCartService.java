package com.spring.service;

 

import java.util.Collection;

import com.spring.entity.CartItem;

public interface IShoppingCartService {

    void add(CartItem item);

    void remove(int id);

    CartItem update(int id, int qty);

    void clear();

    Collection<CartItem> getAllItems();

    int getCount();

    double getAmount();
}
