<%-- 
    Document   : Navbar
    Created on : Dec 21, 2023, 10:01:42 PM
    Author     : Kisara
--%>

<%@page import="com.entity.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>

    <%
        User u = (User) session.getAttribute("userobj");
        String userName = (u != null) ? u.getName() : "";
    %>



    <header>

        <% if (u == null) { %>
    <nav class="nav-bar2">
        <ul>
           <li><a href="login.jsp">Sign Up | Login</a></li>
        </ul>
      </nav>
      
    <% } else { %>
    <nav class="nav-bar2">
        <ul>
            <li><a href="#"><%= userName%></a></li>
            <li><a href="logout" id="logout">Logout</a></li>
        </ul>
    </nav>
    <% }%>



        
        
    <div class="navbar"> <a href="index.jsp">
            <div class="logo" > 
            <img src="assests/photos/logo.png" class="img"> 
        </div></a>

        <div class="searchbar">
            <div class="dropdown" style="height: 51px;">
                <div id="drop-text" class="dropdown-text">
                    Categories
                    <svg id="icon" xmlns="http://www.w3.org/2000/svg" width="16" height="8" viewBox="0 0 16 8" fill="none">
                        <path d="M0.5 0L8 7.5L15.5 0H0.5Z" fill="#4E5347"/>
                    </svg></div>
                <ul id="list" class="dropdown-menu">
                    <li><a href="vegetable.jsp">Vegetables</a></li>
                    <li><a href="fruits.jsp">Fruits</a></li>
                    <li><a href="meats.jsp">Meat</a></li>
                    <li><a href="snacks.jsp">Snack</a></li>
                    <li><a href="juices.jsp">Juices</a></li>
                    <li><a href="Bakery.jsp">Bakery</a></li>
                </ul>
            </div>

            <div class="searchbox">
                <form action="SearchServlet" method="post" class="serachbox-form">
                    <input  type="text" name="searchTerm" placeholder="Search for the items">
                        <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 30 30" fill="none">
                            <path d="M20.1855 17.4609C21.0645 16.0781 21.5801 14.4375 21.5801 12.6738C21.5801 7.74609 17.5898 3.75 12.668 3.75C7.74023 3.75 3.75 7.74609 3.75 12.6738C3.75 17.6016 7.74023 21.5977 12.6621 21.5977C14.4492 21.5977 16.1133 21.0703 17.5078 20.168L17.9121 19.8867L24.2754 26.25L26.25 24.2402L19.8926 17.877L20.1855 17.4609ZM17.6602 7.6875C18.9902 9.01758 19.7227 10.7871 19.7227 12.668C19.7227 14.5488 18.9902 16.3184 17.6602 17.6484C16.3301 18.9785 14.5605 19.7109 12.6797 19.7109C10.7988 19.7109 9.0293 18.9785 7.69922 17.6484C6.36914 16.3184 5.63672 14.5488 5.63672 12.668C5.63672 10.7871 6.36914 9.01758 7.69922 7.6875C9.0293 6.35742 10.7988 5.625 12.6797 5.625C14.5605 5.625 16.3301 6.35742 17.6602 7.6875Z" fill="black"/>
                        </svg>
                </form>

            </div>

        </div>


        <a data-bs-toggle="modal" data-bs-target="#btn"><svg class="icon-cart" viewBox="0 0 24.38 30.52" height="30.52" width="24.38" xmlns="http://www.w3.org/2000/svg">
                <title>icon-cart</title>
                <path transform="translate(-3.62 -0.85)" d="M28,27.3,26.24,7.51a.75.75,0,0,0-.76-.69h-3.7a6,6,0,0,0-12,0H6.13a.76.76,0,0,0-.76.69L3.62,27.3v.07a4.29,4.29,0,0,0,4.52,4H23.48a4.29,4.29,0,0,0,4.52-4ZM15.81,2.37a4.47,4.47,0,0,1,4.46,4.45H11.35a4.47,4.47,0,0,1,4.46-4.45Zm7.67,27.48H8.13a2.79,2.79,0,0,1-3-2.45L6.83,8.34h3V11a.76.76,0,0,0,1.52,0V8.34h8.92V11a.76.76,0,0,0,1.52,0V8.34h3L26.48,27.4a2.79,2.79,0,0,1-3,2.44Zm0,0"></path>
            </svg> <span style="color: white;" class="ml-0 cart-items">( 0 )</span>
        </a> 
      </div>

    </header>


</body>
