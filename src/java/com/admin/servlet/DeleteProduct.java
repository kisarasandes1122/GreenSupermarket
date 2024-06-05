package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "DeleteProduct", urlPatterns = {"/delete"})
public class DeleteProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());

            boolean f = dao.deleteProducts(id);

            HttpSession session = request.getSession();

            if (f) {

                response.sendRedirect("adminProductList.jsp");
            } else {

                response.sendRedirect("adminAddProduct.jsp");
            }



        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
