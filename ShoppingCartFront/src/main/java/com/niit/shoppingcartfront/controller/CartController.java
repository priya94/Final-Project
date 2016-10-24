package com.niit.shoppingcartfront.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.shoppingcart.dao.CartDAO;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.Cart;
import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.User;

@Controller
public class CartController {

	Logger log = LoggerFactory.getLogger(CartController.class);

	@Autowired
	private CartDAO cartDAO;

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	User user;
	
	@Autowired
	private UserDAO userDAO;

	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String myCart(Model model, HttpSession session) {
		log.debug("Starting of the method myCart");
		User user = (User) session.getAttribute("user");
		model.addAttribute("cart", new Cart());
		// To get logged in user id:
		String logged_In_User_id = (String) session.getAttribute("loggedInUser");
		
		model.addAttribute("totalAmount", cartDAO.getTotal(logged_In_User_id));
		List<Cart> mycart=cartDAO.listCart(logged_In_User_id);
		
		System.out.println("uuuuuuuuuuuuuserrrrrrrrrrrrrrrrr"+logged_In_User_id);
		System.out.println("*************************----------"+mycart.size());
		model.addAttribute("cartList", mycart);
		for(Cart c :mycart)
		{
			System.out.println(c.getId());
		}
		model.addAttribute("cartDisplay", "true");

		log.debug("Ending of the method myCart");

		return "/home";
	}

	@RequestMapping(value = "/addToMycart/{id}", method = RequestMethod.GET)
	public String addCart(@PathVariable("id") String id, HttpSession session) {
		// To get the product based on product id
		Product product = productDAO.get(id);
		Cart cart = new Cart();
		// to get the product price to cart
		//cart.setId('1');
		cart.setPrice(product.getPrice());
		// to get the product name to cart
		cart.setProduct(productDAO.get(id));
		cart.setQuantity(1);
		String logged_in_userid = (String) session.getAttribute("loggedInUser");
		cart.setUser(userDAO.get(logged_in_userid));
		cart.setStatus('N');

		cartDAO.saveOrUpdate(cart);

		session.setAttribute("cartSize", cartDAO.listCart(logged_in_userid).size());
		return "redirect:/";

	}
	
	@RequestMapping("/myCart/delete/{id}")
	public String deleteCart(@PathVariable("id") int id, ModelMap model, HttpSession session) throws Exception {
		try {
			cartDAO.delete(id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		String logged_in_userid = (String) session.getAttribute("loggedInUser");
		session.setAttribute("cartSize", cartDAO.listCart(logged_in_userid).size());

		return "redirect:/cart";
	}

//	@RequestMapping("/editCart/{id}")
//	public String editCart(@PathVariable("id") String id, Model model, HttpSession session) {
//		model.addAttribute("cart", this.cartDAO.get(id));
//		String logged_in_userid = (String) session.getAttribute("loggedInUserId");
//		model.addAttribute("listCart", this.cartDAO.listCart(logged_in_userid));
//		return "cart";
//	}

	@RequestMapping(value = "product/get/addc/myCart", method = RequestMethod.GET)
	public String myCart(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryDAO.list());
		//String logged_in_userid = (String) session.getAttribute("loggedInUser");
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.listCart(null));
		model.addAttribute("totalAmount", cartDAO.getTotal("user")); 
		model.addAttribute("displayCart", "true");
		return "/Home";
	}

}