/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import entity.User;

/**
 *
 * @author _viet.quangg
 */
public class UserFacade {

    public User login(String name, String phone) {
        String query = "select * FROM Customers\n"
                + "where name = ?\n"
                + "and phone= ?";
        try {
            Connection con = DBContext.getConnection();
            PreparedStatement stm = con.prepareStatement(query);
            stm.setString(1, name);
            stm.setString(2, phone);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return new User(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4));
            }
        } catch (Exception e) {

        }
        return null;
    }
}
