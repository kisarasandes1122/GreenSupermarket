<%-- 
    Document   : adminOrderHistory
    Created on : Jan 7, 2024, 10:12:59 AM
    Author     : Kisara
--%>

<%@page import="com.entity.OrderDetails"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.OrderDetailsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="assests/productlist.css">
        <link href='https://fonts.googleapis.com/css?family=Rubik' rel='stylesheet'>
        <title>Admin | Product List</title>
        <link rel="Website Icon" type="png" href="assests/photos/logo.png">
    </head>
    <body>
        <header>
            <div class="navbar">
                <div class="logo">
                    <a href="index.jsp">
                        <img src="assests/photos/logo.png" class="img">
                    </a>
                </div>
                <nav class="nav-bar">
                    <ul>
                        <li><a href="admin.jsp" class="active">Admin</a></li>
                        <li><a href="index.jsp">Home</a></li>
                    </ul>
                </nav>
            </div>
        </header>


        <div class="container">
            <div class="adproduct-header" style="position: relative;">
                <h3 class="adproduct-title">Order History</h3>
            </div>
            <div class="adproduct-table" style="height: 100%;">
                <table class="table">
                    <thead class="thead-dark">
                        <tr>


                            <th scope="col">Payer Name</th>
                            <th scope="col">Customer Name</th>
                            <th scope="col">Customer Email</th>
                            <th scope="col">Customer Address</th>
                            <th scope="col">Customer Zip</th>
                            <th scope="col">Product Id</th>
                            <th scope="col">Product Name</th>
                            <th scope="col">Product Quantity</th>
                            <th scope="col">Product Total Price</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
                                List<OrderDetails> orderList = orderDetailsDAO.getAllOrders();
                                for (OrderDetails f : orderList) {
                        %>
                        <tr>
                            <td><%= f.getPayerName()%></td>
                            <td><%= f.getCustomerName()%></td>
                            <td><%= f.getCustomerEmail()%></td>
                            <td><%= f.getCustomerAddress()%></td>
                            <td><%= f.getCustomerZip()%></td>
                            <td><%= f.getProductId()%></td>
                            <td><%= f.getProductName()%></td>
                            <td><%= f.getProductQuantity()%></td>
                            <td><%= f.getTotalPrice()%></td>

                             </tr>
                             <%
                            }

                        %>

                    </tbody>
                </table>
            </div>
        </div>






    </body>
</html>
