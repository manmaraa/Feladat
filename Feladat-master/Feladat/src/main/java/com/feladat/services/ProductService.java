package com.feladat.services;

import java.util.Collections;
import java.util.List;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;
import java.util.Comparator;

import com.feladat.models.ProductList;
import org.springframework.stereotype.Service;

import com.feladat.models.Product;

@Service
public class ProductService {
    ProductList items =new ProductList();
    public List<Product> onlyAvailable(){
        List<Product> available =items.getProductList().stream()
                .filter(quantity->quantity.getQuantity()>0)
                .collect(Collectors.toList());
        return available;
    }
    public List<Product> getProducts() {
        List<Product> Products=items.getProductList();
        return Products;
    }
    public List<Product> getAllNike(){
        List<Product> Nike=items.getProductList().stream()
                .filter(nike->nike.getDescription().toLowerCase().contains("nike"))
                .collect(Collectors.toList());
        return Nike;
    }

    public List<Product> cheapestFirst(){
        List<Product> Cheapest=items.getProductList();
        Collections.sort(Cheapest, new MyComparator());
         return Cheapest;
    }
    class MyComparator implements Comparator<Product>{
        @Override
        public int compare(Product p1, Product p2){
            return p1.getPrice()-p2.getPrice();
        }
    }
    class MyComparator2 implements Comparator<Product>{
        @Override
        public int compare(Product p1, Product p2){
            return p2.getPrice()-p1.getPrice();
        }
    }
    public double getAverage(){

        double Average=items.getProductList().stream().mapToDouble(Product->{return Product.getQuantity();}).average().getAsDouble();
        return Average;
    }
    public List<Product> expensiveAvailable() throws Exception {
        List<Product> Expensive=items.getProductList();
        Collections.sort(Expensive, new MyComparator2() );
        Comparator<Product> valami=Comparator.comparing(Product::getPrice);
      Product  max= items.getProductList().stream().max(valami).get();
        return Expensive;
    }


}
