package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());


            HttpSession session=request.getSession();

            String email=request.getParameter("email");
            String password = request.getParameter("password");



            if("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User us =new User();
                us.setName("Admin");
                session.setAttribute("userobj",us);
                response.sendRedirect("admin.jsp");
            }
            else{
                
                User us = dao.login(email, password);

                if(us!=null){
                    us.setEmail(email);
                    us.setName(us.getName());
                    us.setAddress(us.getAddress());
                    us.setZipcode(us.getZipcode());
                    session.setAttribute("userobj", us);
                    response.sendRedirect("index.jsp");
                }else{
                    request.setAttribute("loginStatus", "failed");

                    // Forward or redirect to the JSP page
                    RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
                    dispatcher.forward(request, response);
                    response.sendRedirect("login.jsp");
                }
                
            }

            
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
