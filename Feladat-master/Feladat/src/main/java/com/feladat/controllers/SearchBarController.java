package com.feladat.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import com.feladat.services.ProductService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
 public class SearchBarController {
  @Autowired
   private ProductService productService;
    @PostMapping("/search")
     public String Search(Model model, @RequestParam("key") String key) {
      model.addAttribute("products",productService.searchBar(key));
     return "products_all";
    }
}