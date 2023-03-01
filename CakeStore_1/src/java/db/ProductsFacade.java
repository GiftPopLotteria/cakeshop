/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import entity.Products;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PHT
 */
public class ProductsFacade {

    public List<Products> getProductWithCategory(String category) throws SQLException {
        List<Products> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Products WHERE category= ?");
        stm.setString(1, category);
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //Load dữ liệu vào đối tượng toy nếu có
        list = new ArrayList<>();
        while (rs.next()) {
            Products products = new Products();
            products.setId(rs.getInt("id"));
            products.setName(rs.getString("name"));
            products.setPrice(rs.getDouble("price"));
            products.setCategory(rs.getString("category"));
            products.setImage(rs.getString("image"));
            list.add(products);
        }
        con.close();
        return list;
    }

    public Products getProductById(int id) throws SQLException {
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Products WHERE id= ?");
        stm.setInt(1, id);
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //Load dữ liệu vào đối tượng toy nếu có
        while (rs.next()) {
            Products products = new Products();
            products.setId(rs.getInt("id"));
            products.setName(rs.getString("name"));
            products.setDescription(rs.getString("description"));
            products.setPrice(rs.getDouble("price"));
            products.setCategory(rs.getString("category"));
            products.setImage(rs.getString("image"));
            products.setTags(rs.getString("tags"));
            products.setImage1(rs.getString("image1"));
            products.setImage2(rs.getString("image2"));
            products.setImage3(rs.getString("image3"));
            products.setImage4(rs.getString("image4"));
            products.setImage5(rs.getString("image5"));
            return products;
        }
        con.close();
        return null;
    }

    public List<Products> getAllProducts() throws SQLException {
        List<Products> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        Statement stm = con.createStatement();
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery("SELECT * FROM Products");
        list = new ArrayList<>();
        while (rs.next()) {
            Products products = new Products();
            products.setId(rs.getInt("id"));
            products.setName(rs.getString("name"));
            products.setPrice(rs.getDouble("price"));
            products.setCategory(rs.getString("category"));
            products.setImage(rs.getString("image"));
            list.add(products);
        }
        con.close();
        return list;
    }

    public List<String> getCategory() throws SQLException {
        List<String> categories = new ArrayList<String>();
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng statement
        Statement stm = con.createStatement();
        //Thực thi lệnh SELECT
        ResultSet rs = stm.executeQuery("SELECT DISTINCT category FROM products");
        while (rs.next()) {
            categories.add(rs.getString("category"));
        }
        return categories;
    }

    public List<Products> getProductsByNameAndCategory(String category, String search) throws SQLException {
        List<Products> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Products WHERE name like ? and category = ?");
        stm.setString(1, "%" + search + "%");
        stm.setString(2, category);
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //Load dữ liệu vào đối tượng toy nếu có
        list = new ArrayList<>();
        while (rs.next()) {
            Products products = new Products();
            products.setId(rs.getInt("id"));
            products.setName(rs.getString("name"));
            products.setPrice(rs.getDouble("price"));
            products.setCategory(rs.getString("category"));
            products.setImage(rs.getString("image"));
            list.add(products);
        }
        con.close();
        return list;
    }

    public List<Products> getProductsByName(String search) throws SQLException {
        List<Products> list = null;
        //Tạo connection để kết nối vào DBMS
        Connection con = DBContext.getConnection();
        //Tạo đối tượng PreparedStatement
        PreparedStatement stm = con.prepareStatement("SELECT * FROM Products WHERE name like ?");
        stm.setString(1, "%" + search + "%");
        //Thực thi lệnh sql
        ResultSet rs = stm.executeQuery();
        //Load dữ liệu vào đối tượng toy nếu có
        list = new ArrayList<>();
        while (rs.next()) {
            Products products = new Products();
            products.setId(rs.getInt("id"));
            products.setName(rs.getString("name"));
            products.setPrice(rs.getDouble("price"));
            products.setCategory(rs.getString("category"));
            products.setImage(rs.getString("image"));
            list.add(products);
        }
        con.close();
        return list;
    }

}
