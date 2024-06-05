package com.admin.servlet;

import com.entity.OrderDetails;
import com.DAO.OrderDetailsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Order", urlPatterns = {"/orderservlet"})
public class Order extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String payerName = request.getParameter("payerName");
        String customerName = request.getParameter("customerName");
        String customerEmail = request.getParameter("customerEmail");
        String customerAddress = request.getParameter("customerAddress");
        String customerZip = request.getParameter("customerZip");


        // Iterate through product details
        for (int index = 0;; index++) {
            String productId = request.getParameter("productDetails[" + index + "][productId]");

            // If productId is null, it means there are no more productDetails parameters
            if (productId == null) {
                break;
            }

            String productName = request.getParameter("productDetails[" + index + "][productName]");
            String productQuantity = request.getParameter("productDetails[" + index + "][productQuantity]");
            String productTotalPrice = request.getParameter("productDetails[" + index + "][productTotalPrice]");

            // Print product details for demonstration purposes
            System.out.println("Payer Name: " + payerName);
            System.out.println("Customer Name: " + customerName);
            System.out.println("Customer Email: " + customerEmail);
            System.out.println("Customer Address: " + customerAddress);
            System.out.println("Customer Zip: " + customerZip);
            System.out.println("Product ID: " + productId);
            System.out.println("Product Name: " + productName);
            System.out.println("Product Quantity: " + productQuantity);
            System.out.println("Product Total Price: " + productTotalPrice);

            // Create an Order object
            OrderDetails order = new OrderDetails(payerName, customerName, customerEmail, customerAddress, customerZip, productId, productName, productQuantity, productTotalPrice);

            // Save the order to the database
            OrderDetailsDAO orderDAO = new OrderDetailsDAO();
            orderDAO.saveOrder(order, response);


        }


    }


}
