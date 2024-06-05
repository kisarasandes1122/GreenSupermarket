<%-- 
    Document   : aboutus
    Created on : Dec 31, 2023, 8:54:27 PM
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
        <section style="padding-top: 210px;">
            <div class="container">
                <div class="abt-hd">
                    <h1 class="abt-hdng">About US</h1>
                </div>
                <div class="abt-container">
                    <div class="abt-grid-item1"><img class="abt-pics" src="green-pic1.jpg"></div>
                    <div class="abt-grid-item2"><p class="abt-text">Green, a locally-rooted supermarket family,
                            takes pride in its commitment to cultivating and empowering independently
                            owned and operated
                            food retail establishments under the Green Concept banner. Dedicated to
                            offering a shopping
                            experience that combines high quality with value for money, Green serves
                            the diverse needs of
                            communities it engages with.
                        </p></div>
                    <div class="abt-grid-item3"><img class="abt-pics" src="green-pic2.jpg"></div>
                    <div class="abt-grid-item4"><p class="abt-text">The foundation of Green's success lies in the support
                            and growth of local retailers,
                            fostering entrepreneurship amidst both international and domestic competition.
                            Built upon a voluntary trading model, Green encourages collaboration with
                            supermarkets owned
                            and operated by local entrepreneurs,
                            who, in turn, collaborate with regional suppliers to address the dynamic
                            demands of consumers.
                        </p></div></div>

            </div>
        </section>
        <jsp:include page="footer.jsp"/>
        <jsp:include page="cart.jsp"/>
        <script src="assests/main.js"></script>
    </body>
</html>
