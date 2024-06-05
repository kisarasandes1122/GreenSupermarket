package com.DAO;

import com.entity.ProductDetails;
import java.util.List;

public interface ProductDAO {
    
    public boolean addProduct(ProductDetails p);
    
    public List<ProductDetails> getAllProducts();
    
    public ProductDetails getProductById(int id); 
    
    public boolean updateEditProducts(ProductDetails p);

    public boolean deleteProducts(int id);

    public List<ProductDetails> getRecentProducts();

    public List<ProductDetails> getVegetables();

    public List<ProductDetails> getFruits();

    public List<ProductDetails> getJuice();

    public List<ProductDetails> getMeat();

    public List<ProductDetails> getSnack();

    public List<ProductDetails> getBakery();

    public List<ProductDetails> searchProducts(String searchTerm);


}
