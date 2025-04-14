package com.form1.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.form1.entity.Admin;
import com.form1.entity.Order;
import com.form1.entity.Product;
import com.form1.repository.AdminRepository;
import com.form1.repository.OrderRepository;
import com.form1.repository.ProductRepository;
import com.form1.service.ProductService;


@Controller
public class handler {

	@Autowired
	private AdminRepository adminRepo;

	@Autowired
	private ProductRepository productRepo;

	@Autowired
	private OrderRepository orderRepo;

	@Autowired
	private ProductService productService;

	
	// ------------------------------ Main Page ------------------------------
	@GetMapping("/")
	public String mainPage() {
		return "index";
	}

	// ------------------------------ Admin Management ------------------------------
	@GetMapping("/admin_register")
	public String showRegistrationPage() {
		return "admin_register";
	}

	@PostMapping("/admin_register")
	public String registerAdmin(@ModelAttribute Admin admin, RedirectAttributes redirectAttributes) {
		if (adminRepo.existsByEmail(admin.getEmail())) {
			redirectAttributes.addFlashAttribute("error", "Admin with this email already exists.");
			return "redirect:/admin_register";
		}
		adminRepo.save(admin);
		redirectAttributes.addFlashAttribute("message", "Admin registered successfully!");
		return "redirect:/admin_login";
	}

	@GetMapping("/admin_login")
	public String showLoginPage() {
		return "admin_login";
	}

	@PostMapping("/admin_login")
	public String processLogin(@RequestParam String email, @RequestParam String password,
			HttpSession session, RedirectAttributes redirectAttributes) {
		Admin admin = adminRepo.findByEmail(email).orElse(null);
		if (admin != null && admin.getPassword().equals(password)) {
			session.setAttribute("adminUser", admin);
			return "redirect:/welcomepage";
		}
		redirectAttributes.addFlashAttribute("error", "Invalid email or password.");
		return "redirect:/admin_login";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/admin_login";
	}

	@GetMapping("/welcomepage")
	public String welcomePage() {
		return "welcomepage";
	}

	@GetMapping("/admin_panel")
	public String showAdminPanel() {
		return "admin_panel";
	}

	// ------------------------------ Product Management ------------------------------
	@GetMapping("/product/add")
	public String showAddProductForm(Model model) {
		model.addAttribute("product", new Product());
		return "add_product";
	}

	@PostMapping("/product/save")
	public String saveProduct(@ModelAttribute Product product, RedirectAttributes redirectAttributes) {
		productRepo.save(product);
		redirectAttributes.addFlashAttribute("message", "Product added successfully!");
		return "redirect:/product/list";
	}

	@GetMapping("/product/list")
	public String showProductList(Model model) {
		model.addAttribute("products", productRepo.findAll());
		return "product_list";
	}

	@GetMapping("/product/edit")
	public String showUpdateForm(@RequestParam("id") Long id, Model model, RedirectAttributes redirectAttributes) {
		Product product = productRepo.findById(id).orElse(null);
		if (product != null) {
			model.addAttribute("product", product);
			return "update_product";
		}
		redirectAttributes.addFlashAttribute("error", "Product not found.");
		return "redirect:/product/list";
	}

	@PostMapping("/product/update")
	public String updateProduct(@ModelAttribute Product product, RedirectAttributes redirectAttributes) {
		if (!productRepo.existsById(product.getId())) {
			redirectAttributes.addFlashAttribute("error", "Product not found.");
			return "redirect:/product/list";
		}
		productRepo.save(product);
		redirectAttributes.addFlashAttribute("message", "Product updated successfully!");
		return "redirect:/product/list";
	}
	
	@Transactional
	@PostMapping("/product/delete")
	public String deleteProduct(@RequestParam("id") Long id) {
	    orderRepo.deleteByProductId(id); // Delete related orders first
	    productRepo.deleteById(id); // Now delete product
	    return "redirect:/product/list";
	}


	// ------------------------------ Order Management ------------------------------
	@PostMapping("/order/process")
	public String processOrder(@RequestParam("id") Long productId,
			@RequestParam("quantity") int quantity,
			RedirectAttributes redirectAttributes) {
		Product product = productRepo.findById(productId).orElse(null);

		if (product == null) {
			redirectAttributes.addFlashAttribute("error", "Product not found.");
			return "redirect:/order/process";
		}

		if (product.getStockQuantity() >= quantity) {
			product.setStockQuantity(product.getStockQuantity() - quantity);
			product.setSalesCount(product.getSalesCount() + quantity);
			productRepo.save(product);

			Order order = new Order();
			order.setProduct(product);
			order.setQuantity(quantity);
			order.setStatus("Processed");
			orderRepo.save(order);


			redirectAttributes.addFlashAttribute("message", "Order processed successfully!");
		} else {
			redirectAttributes.addFlashAttribute("error", "Insufficient stock.");
		}

		return "redirect:/order/process";
	}

	@GetMapping("/order/list")
	public String showOrderList(Model model) {
		model.addAttribute("orders", orderRepo.findAll());
		return "order_list";
	}

	@GetMapping("/order/process")
	public String showOrderProcessPage(Model model) {
		model.addAttribute("orders", orderRepo.findAll());
		return "process_orders";
	}

	// ------------------------------ Inventory & Reports ------------------------------
	@GetMapping("/product/popularity")
	public String showProductPopularity(Model model) {
		model.addAttribute("popularProducts", productService.getProductsSortedByPopularity());
		return "product_popularity";
	}

	@GetMapping("/stock/status")
	public String showStockStatus(Model model) {
		List<Product> productList = productService.getAllProducts();
		model.addAttribute("products", productList);
		model.addAttribute("lowStockProducts",
				productList.stream().filter(p -> p.getStockQuantity() < 10).toList());
		return "stock_status";
	}


}

