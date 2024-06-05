package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.ProductDetails;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SearchServlet", urlPatterns = {"/SearchServlet"})
public class SearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchTerm = request.getParameter("searchTerm");

        ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());

        // Use the search term to query the database
        List<ProductDetails> productList = dao.searchProducts(searchTerm);

        // Set the products in request attribute
        request.setAttribute("products", productList);

        // Forward to the JSP page to display the search results
        RequestDispatcher dispatcher = request.getRequestDispatcher("/searchResults.jsp");
        dispatcher.forward(request, response);

    }

}
