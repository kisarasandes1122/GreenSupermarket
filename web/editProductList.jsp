<%-- 
    Document   : editProductList
    Created on : Dec 26, 2023, 1:25:47 PM
    Author     : Kisara
--%>

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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="assests/addproductStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link href='https://fonts.googleapis.com/css?family=Rubik' rel='stylesheet'>
    <link rel="Website Icon" type="png" href="logo-black.png">
    <title>Admin | Edit Product</title>
</head>
<body>
    
    <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">
    
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

        <!--Preloader-->
      <div class="preloader-wrapper">
        <div class="spinner-grow text-light" role="status">
        </div>
      </div>
        
        <%
            int id = Integer.parseInt(request.getParameter("id"));
            ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
            ProductDetails p = dao.getProductById(id);
        %>
        
        
    
        <div class="container">
            <div class="addproduct-form">
                <div class="addproduct-container">
                  <p class="title">Edit Product</p>
                  <form class="form" style="gap: 0px;" action="editProduct" method="post">

                      <input type="text" name="Pid" placeholder="Product Name" value="<%=p.getProductID()%>">

 
                    <div class="mb-3">
                      <label for="productname" class="form-label">Product Name</label>
                      <input type="text" name="pName" class="input" style="width: 100%;" placeholder="Product Name" value="<%=p.getProductName()%>">
                    </div>
                    
                    <div class="mb-3">
                      <label for="productname" class="form-label">Quantity</label>
                      <input type="text" name="pQuantity" class="input" style="width: 100%;" placeholder="Quantity" value="<%=p.getProductQuantity()%>">
                    </div>
                        
                    <div class="mb-3">
                      <label for="productname" class="form-label">Price</label>
                      <input type="text" name="pPrice" class="input" style="width: 100%;" placeholder="Price" value="<%=p.getProductPrice()%>">
                    </div>
                    
                    <div class="mb-3">
                      <label for="status" class="form-label">Status</label>
                      <select class="status" name="pStatus" style="width: 100%;" id="status" name="status">
                        <%
                        if("active".equals(p.getStatus())){
                        %>
                        <option value="active">Active</option>
                        <option value="Inactive">Inactive</option>
                        <% 
                        } else {
                        %>
                        <option value="Inactive">Inactive</option>
                        <option value="active">Active</option>
                        <%
                            }
                        %>
                        </select>
                    </div>

                    
                    
                    <button class="form-btn" style="margin: 18px 0px;">Update Product</button>
                  </form>
                </div>
              </div>
        </div>
        
        <script src="assests/main.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
       
        <script type="text/javascript">
            var status = document.getElementById("status").value;
                if(status == "success"){
                    swal("Success", "Product Added Successfully","success");
                }
        </script>   

</body>
</html>
