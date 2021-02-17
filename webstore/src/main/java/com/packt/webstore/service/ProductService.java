package com.packt.webstore.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.packt.webstore.domain.Product;

public interface ProductService {
	List <Product> getAllProducts();
	
	List <Product> getNewProducts();
	
	Product getProductById(String productId);
	
	List<Product> getProductsByCategory(String category);
	
	void addProduct(Product product);
	
	void update(Product product);
	
	void delete(String id);
	
	
}
