/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Order;
import model.Product;
import model.Shipping;



/**
 *
 * @author Admin
 */
public class OrderDBcontext extends DBContext{
    public int createReturnId(Order order) {
        try {
            String sql = "INSERT INTO [dbo].[Orders]\n"
                    + "           ([account_id]\n"
                    + "           ,[totalPrice]\n"
                    + "           ,[note]\n"
                    + "           ,[shipping_id])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stm.setInt(1, order.getAccountId());
            stm.setDouble(2, order.getTotalPrice());
            stm.setString(3, order.getNote());
            stm.setInt(4, order.getShippingId());
            stm.executeUpdate();

            ResultSet rs = stm.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception ex) {
            Logger.getLogger(OrderDBcontext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
   public List<Order> getAllOrder() {
    List<Order> orders = new ArrayList<>();
    try {
        String sql = "SELECT o.*, s.id AS shippingId, s.name, s.phone, s.address " +
                     "FROM [Orders] o " +
                     "JOIN [Shipping] s ON o.shipping_id = s.id";
        PreparedStatement stm = connection.prepareStatement(sql);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            Order order = new Order();
            order.setId(rs.getInt("id"));
            order.setAccountId(rs.getInt("account_id"));
            order.setTotalPrice(rs.getDouble("totalPrice"));
            order.setNote(rs.getString("note"));
            order.setCreatedDate(rs.getString("create_date"));

            // Create a Shipping object and set its properties
            Shipping shipping = new Shipping();
            shipping.setId(rs.getInt("shipping_id")); // Use the alias defined in the SQL query
            shipping.setName(rs.getString("name"));
            shipping.setPhone(rs.getString("phone"));
            shipping.setAddress(rs.getString("address"));
            order.setShipping(shipping);

            orders.add(order);
        }
    } catch (Exception ex) {
        Logger.getLogger(OrderDBcontext.class.getName()).log(Level.SEVERE, null, ex);
    }
    return orders;
}

    public List<Order> getOrdersByAccountId(int accountId) {
    List<Order> orders = new ArrayList<>();
    try {
        String sql = "SELECT o.*, s.id as shippingId, s.name, s.phone, s.address FROM [Orders] o " +
                     "JOIN [Shipping] s ON o.shipping_id = s.id WHERE o.account_id = ?";
        PreparedStatement stm = connection.prepareStatement(sql);
        stm.setInt(1, accountId);
        ResultSet rs = stm.executeQuery();
        while (rs.next()) {
            Order order = new Order();
            order.setId(rs.getInt("id"));
            order.setAccountId(rs.getInt("account_id"));
            order.setTotalPrice(rs.getDouble("totalPrice"));
            order.setNote(rs.getString("note"));
            order.setCreatedDate(rs.getString("create_date"));
            
            Shipping shipping = new Shipping();
            shipping.setId(rs.getInt("shipping_id"));
            shipping.setName(rs.getString("name"));
            shipping.setPhone(rs.getString("phone"));
            shipping.setAddress(rs.getString("address"));
            order.setShipping(shipping);
            
            orders.add(order);
        }
    } catch (Exception ex) {
        Logger.getLogger(OrderDBcontext.class.getName()).log(Level.SEVERE, null, ex);
    }
    return orders;
}
public static void main(String[] args) {
    // Tạo một đối tượng OrderDBcontext để sử dụng hàm createReturnId()
    OrderDBcontext orderDBcontext = new OrderDBcontext();

    // Tạo một đối tượng Order và điền thông tin vào
    Order newOrder = new Order();
    newOrder.setAccountId(45); // Giả sử accountId là 1 (cần thay đổi nếu khác)
    newOrder.setTotalPrice(150.75); // Tổng giá trị đơn hàng
    newOrder.setNote("This is a test order for createReturnId function."); // Ghi chú đơn hàng
    newOrder.setShippingId(21); // Giả sử shippingId là 2 (cần thay đổi nếu khác)

    // Gọi hàm createReturnId() để tạo đơn hàng và nhận lại ID của order vừa tạo
    int newOrderId = orderDBcontext.createReturnId(newOrder);

    // Kiểm tra kết quả
    if (newOrderId > 0) {
        System.out.println("Order created successfully with ID: " + newOrderId);
    } else {
        System.out.println("Order creation failed.");
    }
}


}
