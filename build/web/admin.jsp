<%-- 
    Document   : admin
    Created on : Dec 23, 2023, 11:42:44 AM
    Author     : Kisara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="assests/admin.css">
    <link rel="preconnect" href="https://fonts.googleapis.com%22%3E/">
    <link rel="Website Icon" type="png" href="assests/photos/logo.png">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat+Alternates:wght@100&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="navbar">
          <div class="logo"> 
              <a href="index.jsp">
                  <img src="assests/photos/logo.png" class="img" style=" height: 100px; width: 100px;">
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
    <section>
        <div class="container" style="width: 970px;"">
            <h1 class="adpanel-header">Admin Panel</h1>

            <div class="grid">
                <main>

                    <div class="adpanel-element">
                        <a class="addone" href="adminAddProduct.jsp" style="text-decoration: none;"><i class="fa-solid fa-plus fa-2xl first" style="color: #000000; padding: 25px;"></i>
                            <p class="btn-txt">Add Product</p>
                        </a>
                    </div>
                    <div class="adpanel-element">
                        <a class="prdct" href="adminProductList.jsp" style="text-decoration: none;"><i class="fa-solid fa-cart-shopping fa-2xl second" style="color: #000000; padding: 25px;"></i>
                            <p class="btn-txt">Product List</p>
                        </a>
                    </div>
                    <div class="adpanel-element">
                        <a class="prdct" href="adminFeedbackList.jsp" style="text-decoration: none;"><i class="fa-solid fa-comments fa-2xl second" style="color: #000000; padding: 25px;"></i>
                            <p class="btn-txt">Feedbacks</p>
                        </a>
                    </div>
                    <div class="adpanel-element">
                        <a class="prdct" href="adminOrderHistory.jsp" style="text-decoration: none;"><i class="fa-solid fa-bag-shopping fa-2xl second" style="color: #000000; padding: 25px;"></i>
                            <p class="btn-txt">Order List</p>
                        </a>
                    </div>
                    <div class="adpanel-element">
                        <a class="home" href="index.jsp" style="text-decoration: none;"><i class="fa-solid fa-house fa-2xl fourth" style="color: #000000; padding: 25px;"></i>
                            <p class="btn-txt">Home</p>
                        </a>
                    </div>
                    <div class="adpanel-element">
                        <a class="logout" href="logout" style="text-decoration: none;"><i class="fa-solid fa-right-from-bracket fa-2xl fifth" style="color: #000000; padding: 25px;"></i>
                            <p class="btn-txt">Logout</p>
                        </a>
                    </div>

                </main>
            </div>
        </div>
    </section>



</body>
</html>