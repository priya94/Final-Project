package com.niit.shoppingcart.dao;

import java.util.List;

import com.niit.shoppingcart.model.Cart;

public interface CartDAO {
	
	public List<Cart> list();
	
	public List<Cart> listCart(String uID);
	
	public Cart get(int id);
	
	public Cart getByUserId(String uID);
	
	public void saveOrUpdate(Cart cart);
	
	public String delete(int id);
	
	public long getTotal(String id);
	
	public void checkOut(String uID);

}
