<%@page import="com.entity.User"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>cart</title>
    </head>
    <body>

        <%
            User user = (User) session.getAttribute("userobj");
            String userEmail = (user != null) ? user.getEmail() : "";
            String userName = (user != null) ? user.getName() : "";
    String userAddress = (user != null) ? user.getAddress() : "";
        String userZip = (user != null) ? user.getZipcode() : "";
        %>

        <div class="modal fade" id="btn" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" >
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">My Cart</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="cart-body">

                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="hidden" name="userEmail" id="userEmail" value="<%=userEmail%>">
                        <input type="hidden" name="userName" id="userName" value="<%=userName%>">
                        <input type="hidden" name="userAddress" id="userAddress" value="<%=userAddress%>">
                        <input type="hidden" name="userZip" id="userZip" value="<%=userZip%>">

                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <% if (user == null) { %>

                        <button type="button" class="btn btn-primary checkout-btn" style="background-color: #0f3f00;border-color: #0f3f00;"><a href="login.jsp" style="color: white; text-decoration: none;">Checkout</a></button>

                        <% } else {%>
                        <button type="button" class="btn btn-primary checkout-btn" style="background-color: #0f3f00; border-color: #0f3f00;"><a href="checkout.jsp" style="color: white; text-decoration: none;" onclick="sendEmail()">Checkout</a></button>


                        <% }%>
                    </div>
                </div>
            </div>
        </div>

                        <div class="" id="toast">Toast Msg</div>


                        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>

        <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>