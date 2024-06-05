<%-- 
    Document   : contactus
    Created on : Dec 29, 2023, 4:54:58 PM
    Author     : Kisara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <jsp:include page="assests/bootstrapfile.jsp" />

        <link rel="stylesheet" href="assests/styles.css">
        <title>Green Super Market | Home</title>
    </head>
    <body>
        <jsp:include page="Navbar.jsp"/>


        <section>
            <div class="container">
                <div class="contactus-header">
                    <h1 class="contactus-h1">Contact Us</h1>
                </div>
                <div class="contactus-page">
                    <div class="contact-form" style="text-align: center;">
                        <input type="text" placeholder="Name" class="rounded-input"> <br><br>
                        <input type="text" placeholder="Email Address" class="rounded-input"> <br><br>
                        <input type="number" placeholder="Mobile Number" class="rounded-input"> <br><br>
                        <input type="text" placeholder="Your Message" class="rounded-input" style="height: 100px;"> <br><br>
                        <input type="submit" value="Submit" class="submit-button">
                    </div>
                </div>
            </div>
        </section>


        <jsp:include page="footer.jsp"/>
        <jsp:include page="cart.jsp"/>
        <script src="assests/main.js"></script>
    </body>
</html>
