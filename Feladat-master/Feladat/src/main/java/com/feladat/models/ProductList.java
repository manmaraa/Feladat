package com.feladat.models;
import java.util.ArrayList;
import java.util.List;

public class ProductList  {
    List<Product> listOfProducts=new ArrayList<>();
     public ProductList(){
        listOfProducts.add(new Product("Coca-Cola","0,5l standard coke",25,0));
        listOfProducts.add(new Product("Wokin","Chicken with fried rice and WOKIN sauce",119,100));
        listOfProducts.add(new Product("T-shirt","Blue with cogri on bike",300,1));
        listOfProducts.add(new Product("Running shoes","Nike running shoes for everyday sport",1000,5));
        listOfProducts.add(new Product("Printer","some HP printer that wil print pages",3000,2));
}
public List<Product> getProductList(){
    return listOfProducts;
}
}

