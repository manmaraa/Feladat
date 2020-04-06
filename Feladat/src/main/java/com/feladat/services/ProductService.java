package com.feladat.services;

import java.util.ArrayList;
import java.util.List;

import com.feladat.models.ProductList;
import org.springframework.stereotype.Service;

import com.feladat.models.Product;
@Service
public class ProductService {
    ProductList items = new ProductList();

    public List getAllProducts() {
        return items.getProductList();
    }
}
