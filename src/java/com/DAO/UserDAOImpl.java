package com.DAO;

import com.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class UserDAOImpl implements UserDAO{
    
    private Connection conn;
    
    public UserDAOImpl(Connection conn){
        super();
        this.conn=conn;
    }
    
    public boolean userRegister(User us){
        boolean f = false;
        
        try{
            
            PreparedStatement pst = conn.prepareStatement("insert into customer(customerName,customerEmail,customerMobile,customerPass,address,zipcode) values(?,?,?,?,?,?)");
            pst.setString(1, us.getName());
            pst.setString(2, us.getEmail());
            pst.setString(3, us.getMobile());
            pst.setString(4, us.getPassword());
            pst.setString(5, us.getAddress());
            pst.setString(6, us.getZipcode());
            
            int i = pst.executeUpdate();
            if (i==1){
                f=true;
            }
            
            
        } catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }

    
    @Override
    public User login(String email, String password) {
        
        User us = null;
        try {
            String sql = "select * from customer where customerEmail=? and customerPass=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            us = new User();
            us.setId(rs.getInt(1));
            us.setName(rs.getString(2));
            us.setEmail(rs.getString(3));
            us.setMobile(rs.getString(4));
            us.setPassword(rs.getString(5));
            us.setAddress(rs.getString(6));
            us.setZipcode(rs.getString(7));
        }

        rs.close();
        ps.close();

    } catch (Exception e) {
        e.printStackTrace();
    }
            
        return us;
    }                 
}