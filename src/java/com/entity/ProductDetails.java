package com.entity;

public class ProductDetails {
    private int productID;
    private String productName;
    private String productQuantity;
    private String productCategory;
    private String productPrice;
    private String status;
    private String productImg;
    private String email;
	public ProductDetails() {
		super();	
	}
        
        public ProductDetails(String productName, String productQuantity, String productCategory, String productPrice,
		String status, String productImg, String email) {
            super();
            this.productName = productName;
            this.productQuantity = productQuantity;
            this.productCategory = productCategory;
            this.productPrice = productPrice;
            this.status = status;
            this.productImg = productImg;
            this.email = email;
	}

        
        
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(String productPrice) {
		this.productPrice = productPrice;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getProductImg() {
		return productImg;
	}
	public void setProductImg(String productImg) {
		this.productImg = productImg;
	}
        
        public String getEmail() {
		return email;
	}
	public void setEmail(String productImg) {
		this.email = productImg;
	}
	
	@Override
	public String toString() {
		return "ProductDetails [productID=" + productID + ", productName=" + productName + ", productQuantity="
				+ productQuantity + ", productCategory=" + productCategory + ", productPrice=" + productPrice
				+ ", status=" + status + ", productImg=" + productImg + ", email=" + email + "]";
	}
    
  
}