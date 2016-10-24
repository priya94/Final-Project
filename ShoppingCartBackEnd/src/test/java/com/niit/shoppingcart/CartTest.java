
package com.niit.shoppingcart;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;

public class CartTest {

	public static void main(String[] args) {
		@SuppressWarnings("resource")
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.shoppingcart");
		context.refresh();

		Cart cart = (Cart) context.getBean("cart");
		CartDAO cartDAO = (CartDAO) context.getBean("cartDAO");

		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");

		
		cart.setPrice(1000);
		cart.setQuantity(1);
		cart.setStatus('A');
        cart.setTotal(1000);
		cart.setProduct(productDAO.get("PRD006"));
		cart.setUser(userDAO.get("USR001"));

		cartDAO.saveOrUpdate(cart);
		System.out.println("Total : " + cartDAO.getTotal("USR001"));
		cartDAO.checkOut("USR001");
		System.out.println("updated");
	}

}
