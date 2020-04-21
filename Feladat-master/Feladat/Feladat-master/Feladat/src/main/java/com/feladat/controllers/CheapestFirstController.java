package com.feladat.controllers;

import com.feladat.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Cheapest")
public class CheapestFirstController {
    @Autowired
    private ProductService productService;
    @GetMapping("/")
    public String getAllProduct(Model model) {
        model.addAttribute("products",productService.cheapestFirst());
        return"products_all";
    }
}

