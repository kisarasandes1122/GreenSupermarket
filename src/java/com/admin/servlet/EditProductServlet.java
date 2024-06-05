package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.ProductDetails;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "EditProductServlet", urlPatterns = {"/editProduct"})
public class EditProductServlet extends HttpServlet {


    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        try {
            int productID = Integer.parseInt(request.getParameter("Pid"));
            //           String productID = request.getParameter("Pid");
            String productName = request.getParameter("pName");
            String productQuantity = request.getParameter("pQuantity") ;
            String productPrice = request.getParameter("pPrice");
            String status = request.getParameter("pStatus");

            ProductDetails p = new ProductDetails();
            p.setProductID(productID);
            p.setProductName(productName);
            p.setProductQuantity(productQuantity);
            p.setProductPrice(productPrice);
            p.setStatus(status);

            ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
            boolean f = dao.updateEditProducts(p);

            HttpSession session = request.getSession();

            if (f) {

                response.sendRedirect("adminProductList.jsp");
            } else {

                response.sendRedirect("adminProductList.jsp");
            }



        } catch (Exception e) {
            e.printStackTrace();
      }
    }

    

}
