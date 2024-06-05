<%-- 
    Document   : checkout
    Created on : Dec 28, 2023, 6:23:20 PM
    Author     : Kisara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <jsp:include page="assests/bootstrapfile.jsp" />
        <link rel="stylesheet" href="assests/styles.css">

        <title>Green Super Market | Checkout</title>
    </head>
    <body>
        <%
            String userEmail = (String) request.getAttribute("userEmail");
        %>
        <jsp:include page="Navbar.jsp"/>

        <section style="padding: 147px 0px 60px 0px; height: 100%;">
            <div class="container" style="max-width: 1250px;">
                <div class="top">
                    <h2 class="cart-title">My Cart</h2>
                </div>
                <div class="cart">
                    <div class="grid" style="display: flex;">
                        <div class="g-col-4 g-start-6 cart-body" style="width: 60%; background-color: #F4FCEF; border-radius: 30px; padding: 20px;">

                        </div>
                        <hr>
                        <div class="g-col-3 g-start-2" style="width: 40%; background-color: #F4FCEF; border-radius: 30px; margin: 0px 10px;">
                            <p class="cart-text1">Order Summary</p>
                            <hr>

                            <div class="cart-text2">

                                <div class="cart-totalp-text">
                                    <p>Total Price : </p>
                                </div>
                                <div class="cart-total-price">
                                    <span>$<span id="totalPrice"></span></span>
                                </div>
                            </div>
                            <hr>
                            <div class="pay-btn">
                                <div id="paypal-button-container"></div>
                            </div>
                        </div>

                    </div>
                </div>


            </div>
        </section>



        <jsp:include page="footer.jsp"/>
        <jsp:include page="cart.jsp"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
        <!-- Correct SweetAlert2 JavaScript link (optional if you also want to include the script) -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>

        <script src="https://www.paypal.com/sdk/js?client-id=Ac6E3sijGVy632nqzYxBjFC2LvaE_OECOCG-jyETj_MA39yRsq4CKMNuga0IgHasvs9EUJsKu5qmVkLD&currency=USD"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>

        <script src="assests/main.js"></script>
    </body>
</html>
