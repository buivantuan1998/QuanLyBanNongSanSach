/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Supplier;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.ConnectionDB;

/**
 *
 * @author Win 10
 */
public class ProviderModel {
    public List<Supplier> getAllSupplier(){
        Connection conn=null;
        CallableStatement callSt=null;
        List<Supplier> list=new ArrayList<Supplier>();
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call getAllSupplier()}");
            ResultSet rs=callSt.executeQuery();
            while(rs.next()){
                Supplier p=new Supplier();
                p.setId(rs.getInt("Id"));
                p.setSupplierName(rs.getString("SupplierName"));
                p.setAddress(rs.getString("Addresss"));
                p.setEmail(rs.getString("Email"));
                p.setPhoneNumber(rs.getString("PhoneNumber"));
                p.setFax(rs.getString("Fax"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }
}
