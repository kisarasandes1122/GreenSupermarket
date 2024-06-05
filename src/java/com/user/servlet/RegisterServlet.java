
package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;





@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
        try{
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String mobile = request.getParameter("mobile");
            String pass = request.getParameter("pass");
            String address = request.getParameter("add");
            String zipcode = request.getParameter("zip");


            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setMobile(mobile);
            us.setPassword(pass);
            us.setAddress(address);
            us.setZipcode(zipcode);
            
            HttpSession session = request.getSession();
            
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            boolean f = dao.userRegister(us);
            
            if (f){
                session.setAttribute("status", "success");    
                response.sendRedirect("signup.jsp");
            } 
            else {
                session.setAttribute("status", "failed");  
                response.sendRedirect("signup.jsp");   
            } 
            
            

            

            
        } catch (Exception e){
            e.printStackTrace();
        }
        
        
       
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    

}
