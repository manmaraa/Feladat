package com.feladat.controllers;

import com.feladat.models.ProductList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.feladat.services.ProductService;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/search")
public class SearchBarController {

    @Autowired
    private ProductService productService;

@PostMapping("/")
    public String Search(Model model, @RequestParam("key") String key) {

model.addAttribute("items",productService.searchBar(key));
                return "products_all";
    }
}