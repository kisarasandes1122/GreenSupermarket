package com.entity;

public class OrderDetails {

    private int orderId;
    private String payerName;
    private String customerName;
    private String customerEmail;
    private String customerAddress;
    private String customerZip;
    private String productId;
    private String productName;
    private String productQuantity;
    private String totalPrice;


    public OrderDetails(String payerName, String customerName, String customerEmail, String customerAddress, String customerZip, String productId, String productName, String productQuantity, String totalPrice) {

        this.payerName = payerName;
        this.customerName = customerName;
        this.customerEmail = customerEmail;
        this.customerAddress = customerAddress;
        this.customerZip = customerZip;
        this.productId = productId;
        this.productName = productName;
        this.productQuantity = productQuantity;
        this.totalPrice = totalPrice;
    }

    // Getter methods...
    public String getPayerName() {
        return payerName;
    }

    public String getProductId() {
        return productId;
    }

    public String getProductName() {
        return productName;
    }

    public String getProductQuantity() {
        return productQuantity;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setPayerName(String payerName) {
        this.payerName = payerName;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public void setProductQuantity(String productQuantity) {
        this.productQuantity = productQuantity;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getCustomerAddress() {
        return customerAddress;
    }

    public String getCustomerZip() {
        return customerZip;
    }

    public void setCustomerAddress(String customerAddress) {
        this.customerAddress = customerAddress;
    }

    public void setCustomerZip(String customerZip) {
        this.customerZip = customerZip;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getOrderId() {
        return orderId;
    }

    @Override
    public String toString() {
        return "OrderDetails{" + "payerName=" + payerName + ", customerName=" + customerName + ", customerEmail=" + customerEmail + ", customerAddress=" + customerAddress + ", customerZip=" + customerZip + ", productId=" + productId + ", productName=" + productName + ", productQuantity=" + productQuantity + ", totalPrice=" + totalPrice + '}';
    }



}
