package com.niit.shoppingcartfront.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.dao.UserDAO;

import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;

@Controller
public class UserController {

	Logger log = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	UserDAO userDAO;
	@Autowired
	User user;
	
	@Autowired
	private Category category;
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Supplier supplier;
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private Product product;
	@Autowired
	private ProductDAO productDAO;
	
	
	

	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView ValidUser(@RequestParam(value = "name") String name,
			@RequestParam(value = "password") String password, HttpSession session) {
		System.out.println("usr cntrllr login");
		log.debug("Starting of the method login");
		log.info("name is {}  password is {}", name , password);
		
		ModelAndView mv = new ModelAndView("/home");
		boolean isValidUser = userDAO.isValidUser(name, password);
		System.out.println("isValidUser="+isValidUser+"name="+name+"password="+password);

		if (isValidUser == true) {
			System.out.println("usr cntrlr valid usr");
			user = userDAO.get(name);
			session.setAttribute("loggedInUser", user.getId());
			System.out.println(user.getName() + "logged in");

			if (user.isIsadmin()==true) {
				System.out.println("usr cntrlr valid admin");
		
				mv.addObject("isIsadmin", "true");
				System.out.println(user.getName() + ":admin logged in");
			} else {
				mv.addObject("isIsadmin", "false");
				// cart = cartDAO.get(userID);
				// mv.addObject("cart", cart);
				// List<Cart> cartList = cartDAO.list();
				// mv.addObject("cartList", cartList);
				// mv.addObject("cartSize", cartList.size());
			}

		} 
		log.debug("Ending of the method login");
		return mv;
	}
	

	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		System.out.println("logout");
		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		session = request.getSession(true);
		 session.setAttribute("category", category);
		 session.setAttribute("categoryList", categoryDAO.list());
		 
		 session.setAttribute("supplier", supplier);
		 session.setAttribute("supplierList", supplierDAO.list());
		 
		 session.setAttribute("product", product);
		 session.setAttribute("productList", productDAO.list());

		mv.addObject("logoutMessage", "You successfully logged out");
		mv.addObject("loggedOut", "true");

		return mv;
	}

	/*-------------------admin---------------*/
	 @RequestMapping(value = "/admin**", method = RequestMethod.GET)
		public ModelAndView adminPage() {

			ModelAndView model = new ModelAndView();
			model.addObject("title", "Spring Security Hello World");
			model.addObject("message", "This is protected page!");
			model.setViewName("admin");

			return model;

		}
		@RequestMapping(value = "/securityLogin", method = RequestMethod.GET)
		public ModelAndView login(@RequestParam(value = "error", required = false) String error,
				@RequestParam(value = "logout", required = false) String logout) {
			log.debug("Start: method securityLogin");

			ModelAndView model = new ModelAndView();
			if (error != null) {
				model.addObject("error", "Invalid username and password!");
			}

			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
			}
			model.setViewName("securityLogin");
			log.debug("End: method securityLogin");

			return model;

		}
		@RequestMapping(value = "/403", method = RequestMethod.GET)
		public ModelAndView accesssDenied(Principal user) {

			ModelAndView model = new ModelAndView();

			if (user != null) {
				model.addObject("msg", "Hi " + user.getName()
				+ ", you do not have permission to access this page!");
			} else {
				model.addObject("msg",
				"You do not have permission to access this page!");
			}

			model.setViewName("403");
			return model;

		}
		
		@RequestMapping(value = {"/welcome**" }, method = RequestMethod.GET)
		public ModelAndView defaultPage() {
			log.debug("Start: method defaultPage");
			ModelAndView model = new ModelAndView();
			model.addObject("title", "Spring Security Login Form - Database Authentication");
			model.addObject("message", "This is default page!");
			model.setViewName("hello");
			log.debug("End: method defaultPage");
			return model;
			
		}

}