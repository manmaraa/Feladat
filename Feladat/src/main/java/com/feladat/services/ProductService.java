package com.feladat.services;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import com.feladat.models.ProductList;
import org.springframework.stereotype.Service;

import com.feladat.models.Product;
@Service
public class ProductService {
    ProductList items = new ProductList();

    public List<Product> getAllProducts() {
        return items.getProductList();
    }

    public List<Product> onlyAvailable() {
        List<Product> available = items.getProductList().stream()
                .filter(quantity -> quantity.getQuantity() > 0)
                .collect(Collectors.toList());
        return available;
    }
}
