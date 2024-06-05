package com.DAO;

import com.entity.Feedback;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDAOImpl implements FeedbackDAO {

    private Connection conn;

    public FeedbackDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }

    public boolean feedbackData(Feedback us) {
        boolean f = false;

        try {

            PreparedStatement pst = conn.prepareStatement("insert into feedback(userName, userEmail, rating, message) values(?,?,?,?)");
            pst.setString(1, us.getName());
            pst.setString(2, us.getEmail());
            pst.setString(3, us.getRate());
            pst.setString(4, us.getMessage());

            int i = pst.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    @Override
    public List<Feedback> getAllfeedbacks() {

        List<Feedback> list = new ArrayList<Feedback>();

        try {
            String sql = "select * from feedback";
            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setId(rs.getInt(1));
                f.setName(rs.getString(2));
                f.setEmail(rs.getString(3));
                f.setRate(rs.getString(4));
                f.setMessage(rs.getString(5));
                f.setDate_time(rs.getString(6));

                list.add(f);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;

    }


}
