package com.DAO;

import javax.servlet.http.HttpServletResponse;
import com.entity.OrderDetails;
import com.admin.servlet.Order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import com.DB.DBConnect;

public class OrderDetailsDAO {

    public void saveOrder(OrderDetails order, HttpServletResponse response) {
        try (Connection connection = DBConnect.getConn()) {
            String sql = "INSERT INTO orders (payerName, customerName, customerEmail, customerAddress, customerZip, productId, productName, productQuantity, productTotalPrice) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, order.getPayerName());
                preparedStatement.setString(2, order.getCustomerName());
                preparedStatement.setString(3, order.getCustomerEmail());
                preparedStatement.setString(4, order.getCustomerAddress());
                preparedStatement.setString(5, order.getCustomerZip());
                preparedStatement.setString(6, order.getProductId());
                preparedStatement.setString(7, order.getProductName());
                preparedStatement.setString(8, order.getProductQuantity());
                preparedStatement.setString(9, order.getTotalPrice());

                preparedStatement.executeUpdate();

                response.sendRedirect("feedback.jsp");


            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<OrderDetails> getAllOrders() {
        List<OrderDetails> orderList = new ArrayList<>();

        try (Connection connection = DBConnect.getConn()) {
            String sql = "SELECT * FROM orders";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                ResultSet resultSet = preparedStatement.executeQuery();

                while (resultSet.next()) {
                    OrderDetails order = new OrderDetails(
                            resultSet.getString("payerName"),
                            resultSet.getString("customerName"),
                            resultSet.getString("customerEmail"),
                            resultSet.getString("customerAddress"),
                            resultSet.getString("customerZip"),
                            resultSet.getString("productId"),
                            resultSet.getString("productName"),
                            resultSet.getString("productQuantity"),
                            resultSet.getString("productTotalPrice")
                    );

                    orderList.add(order);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return orderList;
    }


}
