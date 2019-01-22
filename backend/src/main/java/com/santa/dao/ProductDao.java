package com.santa.dao;
import java.util.List;

import com.santa.models.Category;
import com.santa.models.Product;
public interface ProductDao {
	void saveorUpdate(Product product);
	Product getProduct(int id);
	void deleteProduct(int id);
	List<Product>getAllProducts();
	List<Category> getAllCategories();


}
