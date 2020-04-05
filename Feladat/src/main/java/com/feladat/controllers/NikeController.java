package com.feladat.controllers;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.feladat.models.Product;
import com.feladat.services.ProductService;

@Controller
@RequestMapping("/Nike")
public class NikeController {
	@Autowired
	private ProductService productService;
	@GetMapping("/")
public String getAllProduct(Model model) {
	
	model.addAttribute("products",productService.getAllProducts());
	return"nike";
}
}