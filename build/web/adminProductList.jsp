<%-- 
    Document   : adminProductList
    Created on : Dec 23, 2023, 6:10:14 PM
    Author     : Kisara
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.ProductDetails"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
            <h3 class="adproduct-title">Product List</h3>
        </div>
        <div class="adproduct-table" style="height: 100%;">
            <table class="table">
                <thead class="thead-dark">
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Image</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Status</th>
                    <th scope="col">Edit/Delete</th>
                </tr>
                </thead>
                <tbody>
                <%
                    ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
                    List<ProductDetails> list = dao.getAllProducts();
                    for(ProductDetails p : list){
                %>
                    <tr>
                        <td><%=p.getProductID()%></td>
                        <td><img src="<%=p.getProductImg()%>" 
                                  style="width:50px; height: 50px; "/></td>
                        <td><%=p.getProductName()%></td>
                        <td><%=p.getProductQuantity()%></td>
                        <td><%=p.getProductCategory()%></td>
                        <td><%=p.getProductPrice()%></td>
                        <td><%=p.getStatus()%></td>
                        <td>
                            <a class="btn btn-success" href="editProductList.jsp?id=<%=p.getProductID()%>" role="button">Update</a>
                            <a class="btn btn-danger" href="delete?id=<%=p.getProductID()%>" role="button">Delete</a>
                        </td>
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