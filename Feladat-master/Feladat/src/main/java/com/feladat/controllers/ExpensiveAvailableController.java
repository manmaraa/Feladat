package com.feladat.controllers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.feladat.services.ProductService;
@Controller
 @RequestMapping("/expensive")
  public class ExpensiveAvailableController {
   @Autowired
    private ProductService productService;
     @GetMapping("/")
      public String getAllProduct(Model model) throws Exception {
        model.addAttribute("products",productService.expensiveAvailable());
      return"expensive_available";
    }
}
