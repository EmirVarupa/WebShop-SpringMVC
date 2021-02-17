package com.packt.webstore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.packt.webstore.dao.ProductDao;
import com.packt.webstore.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	private ProductService productService;
  @RequestMapping("/")
  public String welcome(Model model) {
    model.addAttribute("greeting", "Welcome to CompTech!");
    model.addAttribute("tagline", "Best selection. Best Service.");
    model.addAttribute("contactEmail", "emir.varupa2018@size.ba");
    model.addAttribute("contactNumber", "060-555-7777");
    model.addAttribute("products", productService.getNewProducts());
    return "welcome";
  }
  
  @RequestMapping("/welcome/greeting")
  public String greeting() {
   return "welcome";
  }
  
} 
