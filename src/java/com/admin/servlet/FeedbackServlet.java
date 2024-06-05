package com.admin.servlet;

import com.DAO.FeedbackDAOImpl;
import com.DB.DBConnect;
import com.entity.Feedback;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "FeedbackServlet", urlPatterns = {"/FeedbackServlet"})
public class FeedbackServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String userEmail = request.getParameter("userEmail");
            String userName = request.getParameter("userName");
            String rating = request.getParameter("rate");
            String feedbackMessage = request.getParameter("feedbackMessage");

            Feedback us = new Feedback();
            us.setEmail(userEmail);
            us.setName(userName);
            us.setRate(rating);
            us.setMessage(feedbackMessage);

            HttpSession session = request.getSession();

            FeedbackDAOImpl dao = new FeedbackDAOImpl(DBConnect.getConn());
            boolean f = dao.feedbackData(us);

            if (f) {
                session.setAttribute("status", "success");
                response.sendRedirect("index.jsp");
            } else {
                session.setAttribute("status", "failed");
                response.sendRedirect("feedback.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }


    }

}
