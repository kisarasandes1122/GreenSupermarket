<%-- 
    Document   : feedback
    Created on : Dec 31, 2023, 10:17:22 PM
    Author     : Kisara
--%>

<%@page import="com.entity.User"%>
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

        <%
            User user = (User) session.getAttribute("userobj");
            String userEmail = (user != null) ? user.getEmail() : "";
            String userName = (user != null) ? user.getName() : "";

        %>
        <jsp:include page="Navbar.jsp"/>


        <section>
            <div class="container">
                <div class="rate-us">
                    <div class="rating">
                        <div class="wrapper">
                            <div class="title">Rate your experience</div>
                            <div class="content">We highly value your feedback! Kindly take a moment to rate your experience and provide us with your valuable feedback.</div>
                            <form action="FeedbackServlet" method="post">
                                <div class="rating">

                                    <input type="hidden" name="userEmail" id="userEmail" value="<%=userEmail%>">
                                    <input type="hidden" name="userName" id="userName" value="<%=userName%>">

                                    <input type="radio" id="star5" name="rate" value="5" />
                                <label for="star5" title="text"
                                       ><svg
                                        viewBox="0 0 576 512"
                                        height="1em"
                                        xmlns="http://www.w3.org/2000/svg"
                                        class="star-solid"
                                        >
                                    <path
                                        d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"
                                        ></path></svg
                                    ></label>
                                <input type="radio" id="star4" name="rate" value="4" />
                                <label for="star4" title="text">
                                    <svg viewBox="0 0 576 512" height="1em"  xmlns="http://www.w3.org/2000/svg" class="star-solid" >
                                    <path  d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"></path>
                                    </svg>
                                </label>
                                <input checked="" type="radio" id="star3" name="rate" value="3" />
                                <label for="star3" title="text">
                                    <svg viewBox="0 0 576 512" height="1em"  xmlns="http://www.w3.org/2000/svg" class="star-solid" >
                                    <path  d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star2" name="rate" value="2" />
                                <label for="star2" title="text">
                                    <svg viewBox="0 0 576 512" height="1em"  xmlns="http://www.w3.org/2000/svg" class="star-solid" >
                                    <path  d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"></path>
                                    </svg>
                                </label>
                                <input type="radio" id="star1" name="rate" value="1" />
                                <label for="star1" title="text">
                                    <svg viewBox="0 0 576 512" height="1em"  xmlns="http://www.w3.org/2000/svg" class="star-solid" >
                                    <path  d="M316.9 18C311.6 7 300.4 0 288.1 0s-23.4 7-28.8 18L195 150.3 51.4 171.5c-12 1.8-22 10.2-25.7 21.7s-.7 24.2 7.9 32.7L137.8 329 113.2 474.7c-2 12 3 24.2 12.9 31.3s23 8 33.8 2.3l128.3-68.5 128.3 68.5c10.8 5.7 23.9 4.9 33.8-2.3s14.9-19.3 12.9-31.3L438.5 329 542.7 225.9c8.6-8.5 11.7-21.2 7.9-32.7s-13.7-19.9-25.7-21.7L381.2 150.3 316.9 18z"></path>
                                    </svg>
                                </label>

                                </div>
                                <div class="feedback-input">
                                    <textarea name="feedbackMessage" cols="30" rows="6" placeholder="Tell us about your experience!" style="width: 100%; border: 1px solid #ffffff;"></textarea>
                                </div>


                                    <div class="rate-btn">
                                        <button type="submit" class="submit-btn"  onclick="sendEmail()" style="margin-right:20px">Send</button>
                                        <button type="button" class="submit-btn"  onclick="sendEmail()" href="index.jsp">Later</button>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<jsp:include page="footer.jsp"/>
<jsp:include page="cart.jsp"/>
<script src="assests/main.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>

    </body>
</html>
