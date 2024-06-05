<%-- 
    Document   : login
    Created on : Dec 20, 2023, 3:51:26 PM
    Author     : Kisara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="assests/styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"/>
    <link href='https://fonts.googleapis.com/css?family=Rubik' rel='stylesheet'>
    <link rel="Website Icon" type="png" href="assests/photos/logo.png">
    <title>Green Super Market | Login</title>
</head>
<body>

    <%
        String loginStatus = (String) request.getAttribute("loginStatus");

    %>

    <input type="hidden" id="loginStatus" value="<%= request.getAttribute("loginStatus")%>">

    <jsp:include page="Navbar.jsp"/>
    <!--Preloader-->
        <div class="preloader-wrapper">
          <div class="spinner-grow text-light" role="status">
          </div>
        </div>

          <div class="loginform">
            <div class="loginform-container">
              <p class="title">Welcome Back</p>
              <form method="post" action="login" class="form">
                <input type="email" class="input" placeholder="Email" name="email" id="email">
                <input type="password" class="input" placeholder="Password" name="password" id="password">
                <button class="form-btn">Sign in</button>
              </form>
              <p class="sign-up-label">
                Don't have an account?  <a href="signup.jsp">Sign up</a>
              </p>
            </div>
          </div>

          <jsp:include page="footer.jsp"/>  
          <script src="assests/main.js"></script>
          <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
          <link rel="stylesheet" href="alert/dist/sweetalert.css">

          <script type="text/javascript">
                var loginStatus = document.getElementById("loginStatus").value;
                if (loginStatus == "failed") {
                    swal("Sorry", "Wrong Username or Password", "error");
                }
          </script>

</html>
