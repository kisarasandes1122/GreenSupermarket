<%-- 
    Document   : index
    Created on : Dec 20, 2023, 3:40:00 PM
    Author     : Kisara
--%>

<%@page import="com.entity.User"%>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <jsp:include page="assests/bootstrapfile.jsp" />


    <link rel="stylesheet" href="assests/styles.css">
    <title>Green Super Market | Home</title>
</head>
<body>

    <%
       User user = (User) session.getAttribute("userobj");
       String userEmail = (user != null) ? user.getEmail() : "";

    %>



    <jsp:include page="Navbar.jsp"/>

    <!--Preloader-->
    <div class="preloader-wrapper">
        <div class="spinner-grow text-light" role="status">
        </div>
    </div>
    
        
    <section class="home-1">
        <div id="slider">
        <figure>
          <img src="assests/photos/slider-1.png" alt="">
          <img src="assests/photos/slider-2.png" alt="">
          <img src="assests/photos/slider-3.png" alt="">
          <img src="assests/photos/slider-4.png" alt="">
          <img src="assests/photos/slider-5.png" alt="">
        </figure>
      </div>
    </section>    
    
    
    <section id="hot">
        <div class="container">
            <div class="hotdeals-header">
          <h1 class="hotdeals-title">Hot Deals</h1>
        </div>

          <div class="hotdeals-products">
              <div class="row" style="text-align: center;">

                  <%
                      ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConn());
                      List<ProductDetails> list = dao2.getRecentProducts();
                      for (ProductDetails p : list) {
                  %>
                  <div class="col">
                      <div class="product">
                          <img src="<%=p.getProductImg()%>" alt="apple"
                               style="width: 190px; height: 190px;" class="product-pic">
                          <div class="product-text">
                              <p class="prouct-name"><%=p.getProductName()%> <%=p.getProductQuantity()%></p>
                              <p class="product-price">Rs.<%=p.getProductPrice()%></p>


                              <% if (user == null) { %>
                              <a href="login.jsp"><button class="btn btn-secondary" style="width: 100%; background-color: #0f3f00;">Add to Cart</button></a>


                              <% } else { %>
                              <button href="#" class="btn btn-secondary" style="width: 100%; background-color: #0f3f00;" onclick="add_cart(<%=p.getProductID()%>, '<%=p.getProductName()%>', '<%=p.getProductPrice()%>')">Add to Cart</button>


                              <% } %>





                          </div>
                            </div>
                        </div>

                  <%
                    }
                  %>



              </div>

          </div>
        </div>   
    </section>



                  <section id="cat">
                      <div class="container" style="padding: 100px;">
                          <div class="shopbycategory-header">
          <h1 class="shopbycategory-title">Shop by Category</h1>
        </div>

        <div class="shopbycategory-products">
            <div class="row" style="text-align: center;">
              <div class="col">
                <div class="product">
                    <a href="vegetable.jsp"><img class="category-pic" src="vegetable.png" alt="vegetable"></a>
                </div>
              </div>
              <div class="col">
                <div class="product">
                    <a href="fruits.jsp"><img class="category-pic" src="fruits.png" alt="fruits"></a>
                </div>
              </div>
              <div class="col">
                <div class="product">
                    <a href="juices.jsp"><img class="category-pic" src="juices.png" alt="juices"></a>
                </div>
              </div>
            </div>
            <div class="row" style="text-align: center;">
              <div class="col">
                <div class="product">
                    <a href="meats.jsp"><img class="category-pic" src="meats.png" alt="meat"></a>
                </div>
              </div>
              <div class="col">
                <div class="product">
                    <a href="snacks.jsp"><img class="category-pic" src="snacks.png" alt="snacks"></a>
                </div>
              </div>
              <div class="col">
                <div class="product">
                    <a href="Bakery.jsp"><img class="category-pic" src="bakery.png" alt="bakery"></a>
                </div>
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