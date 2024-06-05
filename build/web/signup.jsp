<%-- 
    Document   : signup
    Created on : Dec 20, 2023, 3:54:23 PM
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
    <title>Green Super Market | Sign up</title>
</head>
<body>

    <%
        String status = (String) request.getAttribute("status");

    %>

    <jsp:include page="Navbar.jsp"/>
    <!--Preloader-->
        <div class="preloader-wrapper">
          <div class="spinner-grow text-light" role="status">
          </div>
        </div>

          <div class="signupform">
            <div class="signupform-container">
              <p class="title">Create Account</p>
              <form method="post" action="RegisterServlet" class="form">
                <input type="text" class="input" placeholder="Name" name="name" id="name">
                <input type="email" class="input" placeholder="Email" name="email" id="email">
                <input type="text" class="input" placeholder="Mobile Number" name="mobile" id="mobile">
                <input type="address" class="input" placeholder="Address" name="add" id="add">
                <input type="zipcode" class="input" placeholder="Zip Code" name="zip" id="zip">
                <input type="password" class="input" placeholder="Password" name="pass" id="pass">
                <input type="password" class="input" placeholder="Confirm Password" name="re_pass" id="re_pass">
                <input type="submit" class="form-btn" name="signup" id="signup" value="Create Account">
              </form>
              <p class="sign-in-label">
                Already have an account?  <a href="login.jsp">Sign in</a>
              </p>
            </div>
          </div>
        
        <jsp:include page="footer.jsp"/>

    <script src="assests/main.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
        var status = document.getElementById("status").value;
            if(status == "success"){
                swal("Congrats", "Account created Successfully","success");
            }
    </script>

</body>
</html>