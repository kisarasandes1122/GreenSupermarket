package com.admin.servlet;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.ProductDetails;
import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet(name = "ProductAdd", urlPatterns = {"/addProduct"})
@MultipartConfig
public class ProductAdd extends HttpServlet {

    
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        
        try{
            String productName = request.getParameter("pName");
            String productQuantity = request.getParameter("pQuantity") ;
            String productCategory = request.getParameter("pCategory");
            String productPrice = request.getParameter("pPrice");
            String status = request.getParameter("pStatus");
            Part part= request.getPart("fileToUpload");
            String productImg = part.getSubmittedFileName();
            
            ProductDetails p = new ProductDetails(productName,productQuantity,productCategory,productPrice,status,productImg,"admin");
            
            ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
           
            boolean f = dao.addProduct(p);
            
            HttpSession session = request.getSession();
            
            String path = getServletContext().getRealPath("");
            File file = new File(path);

            
            part.write(path + File.separator + productImg);
            
            if (f){

                response.sendRedirect("adminAddProduct.jsp");
            } else{

                response.sendRedirect("adminAddProduct.jsp");
            }
            
            
            
            
        }
        catch (Exception e){
            e.printStackTrace();  
        }
     
      
    }

    
}
