package com.feladat.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.feladat.services.ProductService;
@Controller
 @RequestMapping("/products")
  public class ProductController {
   @Autowired
    private ProductService productService;
	 @GetMapping("/all")
      public String getAllProduct(Model model) {
	   model.addAttribute("products",productService.getProducts());
	  return"products_all";
      }
}
