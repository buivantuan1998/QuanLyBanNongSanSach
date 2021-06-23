/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Categorys;
import entity.Discount;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConnectionDB;

/**
 *
 * @author ADMIN
 */
public class DiscountModel {
    public List<Discount> getAllDiscount() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Discount> list = new ArrayList<Discount>();
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getAllDiscount()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Discount d = new Discount();
                d.setId(rs.getInt("Id"));
                d.setDiscountName(rs.getString("DiscountName"));
                d.setValue(rs.getFloat("Value"));
                d.setStartDate(rs.getDate("StartDate"));
                d.setEndDate(rs.getDate("EndDate"));
                list.add(d);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }
    
     public Discount getDiscountById(int id) {
        Connection conn = null;
        CallableStatement calla = null;
        Discount d = new Discount();
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call getDiscountById(?)}");
            calla.setInt(1, id);
            ResultSet rs = calla.executeQuery();
            while (rs.next()) {
                d.setId(id);
                d.setDiscountName(rs.getString("DiscountName"));
                d.setValue(rs.getFloat("Value"));
                d.setStartDate(rs.getDate("StartDate"));
                d.setEndDate(rs.getDate("EndDate"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return d;
    }
}
