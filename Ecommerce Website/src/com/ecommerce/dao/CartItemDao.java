package com.ecommerce.dao;

import java.util.List;

import com.ecommerce.model.CartItem;

public interface CartItemDao {
	void insert(CartItem cartItem);

	void edit(CartItem cartItem);

	void delete(String id);

	CartItem get(String name);

	CartItem get(int id);

	List<CartItem> getAll();

	List<CartItem> search(String name);
}
