<%-- 
    Document   : searchResults
    Created on : Dec 31, 2023, 4:56:07 PM
    Author     : Kisara
--%>

<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.ProductDetails"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
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
        <link rel="stylesheet" href="assests/styles.css">
        <link href='https://fonts.googleapis.com/css?family=Rubik' rel='stylesheet'>
        <link rel="Website Icon" type="png" href="assests/photos/logo-black.png">
        <title>Search Result</title>
    </head>
    <body>
        <%
            User u = (User) session.getAttribute("userobj");
        %>

        <jsp:include page="Navbar.jsp"/>


        <section style="padding: 147px 0px 100px 0px; height: 100%;">
            <div class="container">
                <div class="searchby-nav-text">
                    <div class="searchby-title">
                        <h1 class="searchby-title-text">Search by Product Name</h1>
                    </div>
                </div>
                <div class="searchby-content">
                    <div class="container">
                        <div class="row" style="justify-content: center; display: flex; padding: 40px;">




                            <%
                                List<ProductDetails> searchResults = (List<ProductDetails>) request.getAttribute("products");
                                    if (searchResults != null && !searchResults.isEmpty()) {
                            %>
                            <%
                                for (ProductDetails p : searchResults) {
                            %>


                            <div class="col-md-3" style="margin: 30px; display: contents;">
                                <div class="card" style="width: 17rem; border-radius: 10px; margin: 10px;">
                                    <img src="<%=p.getProductImg()%>" class="product-img" alt="...">
                                    <div class="card-body">
                                        <h5 class="Product-title"><%=p.getProductName()%> <%=p.getProductQuantity()%></h5>
                                        <p class="Product-price">Rs <%=p.getProductPrice()%>.00</p>
                                        <div class="mt-3 d-flex justify-content-between">
                                            <% if (u == null) { %>
                                            <a href="login.jsp"><button class="btn btn-secondary" style="width: 100%; background-color: #0f3f00;">Add to Cart</button></a>
                                            <% } else {%>
                                            <button href="#" class="btn btn-secondary" style="width: 100%; background-color: #0f3f00;" onclick="add_cart(<%=p.getProductID()%>, '<%=p.getProductName()%>', '<%=p.getProductPrice()%>')">Add to Cart</button>
                                            <% } %>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%
                                    }
                                } else {
                                    out.println("No results found.");
                                }
                            %>



                        </div>
                    </div>
                </div>
            </div>

        </section>

    <jsp:include page="footer.jsp"/>
    <jsp:include page="cart.jsp"/>


    <script src="assests/main.js"></script>


    </body>
</html>
