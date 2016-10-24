package com.niit.shoppingcartfront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.util.FileUtil;
import com.niit.shoppingcart.util.Util;

@Controller
public class ProductController {
	@Autowired
	Product product;

	@Autowired(required = true)
	ProductDAO productDAO;

	@Autowired(required = true)
	CategoryDAO categoryDAO;

	@Autowired(required = true)
	SupplierDAO supplierDAO;
	
	String path="E:\\upld\\";

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String productList(Model model) {
		System.out.println("to add prdcts in prdct cntrllr");
		model.addAttribute("isIsadminClickedProducts", "true");
		model.addAttribute("product", product);
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		return "home";
	}

	@RequestMapping(value = "/productadd", method = RequestMethod.POST)
	public String addProducts(@ModelAttribute("product") Product product,Model model) {
		System.out.println("product add");
		Category category = categoryDAO.getByName(product.getCategory().getName());
		categoryDAO.saveOrUpdate(category); 

		Supplier supplier = supplierDAO.getByName(product.getSupplier().getName());
		supplierDAO.saveOrUpdate(supplier); 

		product.setCategory(category);
	product.setSupplier(supplier);

		product.setCategory_id(category.getId());
		product.setSupplier_id(supplier.getId());
		//System.out.println("dddddddddddddddd"+);
		String newID = Util.removeComma(product.getId());
		product.setId(newID);
		productDAO.saveOrUpdate(product);
		

		MultipartFile file = product.getImage();
		if(file==null)
				FileUtil.upload(path, file, product.getId() + ".jpg");

		return "redirect:/products";
	}

	@RequestMapping("deleteProducts/{id}")
	public String deleteProducts(@PathVariable("id") String id, ModelMap model) {
		System.out.println("prdct delt");
		try {
			productDAO.delete(id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		
		return "redirect:/products";
	}

	@RequestMapping(value = "editProducts/{id}")
	public String editProducts(@PathVariable("id") String id, ModelMap model) {
		System.out.println("prdct edit");
		product = productDAO.get(id);
		model.addAttribute("product", product);
		model.addAttribute("productList", productDAO.list());
		model.addAttribute("categoryList", categoryDAO.list());
		model.addAttribute("supplierList", supplierDAO.list());
		return "redirect:/products";
	}

	@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model,
			RedirectAttributes redirectAttributes) {
		System.out.println("prdct get");
		redirectAttributes.addFlashAttribute("selectedProduct", productDAO.get(id));
		return "redirect:/backToHome";

	}

	@RequestMapping(value = "/backToHome", method = RequestMethod.GET)
	public String backToHome(@ModelAttribute("selectedProduct") final Object selectedProduct, final Model model) {
		System.out.println("prdct back to home");
		model.addAttribute("selectedProduct", selectedProduct);
		// model.addAttribute("categoryList", this.categoryDAO.list());

		return "/home";
	}

	/*@RequestMapping(value = "product/get/{id}")
	public String getSelectedProduct(@PathVariable("id") String id, Model model) {
		model.addAttribute("selectedProduct", this.productDAO.get(id));
		model.addAttribute("categoryList", this.categoryDAO.list());

		return "home";

	}*/
}
