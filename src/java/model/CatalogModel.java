/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dto.GetAllCategoryDTO;
import entity.Categorys;
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
 * @author Win 10
 */
public class CatalogModel {

    public List<Categorys> getAllCatalog() {
        Connection conn = null;
        CallableStatement callSt = null;
        List<Categorys> list = new ArrayList<Categorys>();
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getAllCatalog()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Categorys c = new Categorys();
                c.setId(rs.getInt("Id"));
                c.setCategoryName(rs.getString("CategoryName"));
                c.setDescriptions(rs.getString("Discriptions"));
                c.setSeasonId(rs.getInt("SeasonId"));
                c.setSupplierId(rs.getInt("SupplierId"));
                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }

    public boolean insertCatalog(Categorys catalog) {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{ call insertCatalog(?,?,?,?)}");
            calla.setString(1, catalog.getCategoryName());
            calla.setString(2, catalog.getDescriptions());
            calla.setInt(3, catalog.getSupplierId());
            calla.setInt(4, catalog.getSeasonId());
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return result;
    }

    public Categorys GetCatalogById(int id) {
        Connection conn = null;
        CallableStatement calla = null;
        Categorys catalog=new Categorys();
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call GetCatalogById(?)}");
            calla.setInt(1, id);
            ResultSet rs = calla.executeQuery();
            while (rs.next()) {
                catalog.setId(id);
                catalog.setCategoryName(rs.getString("CategoryName"));
                catalog.setDescriptions(rs.getString("Discriptions"));
                catalog.setSupplierId(rs.getInt("SupplierId"));
                catalog.setSeasonId(rs.getInt("SeasonId"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return catalog;
    }
    public boolean updateCatalog(Categorys catalog){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call updateCatalog(?,?,?,?,?)}");
            calla.setInt(1, catalog.getId());
            calla.setString(2, catalog.getCategoryName());
            calla.setString(3, catalog.getDescriptions());
            calla.setInt(4, catalog.getSupplierId());
            calla.setInt(5, catalog.getSeasonId());                   
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            ConnectionDB.closeConnect(conn, calla);
        }
        return result;
    }
    
     public boolean deleteCategory(int id){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call deleteCategory(?)}");
            calla.setInt(1, id);
            calla.executeUpdate();
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(CatalogModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
            ConnectionDB.closeConnect(conn, calla);
        }
        return result;
    }
     
     public List<GetAllCategoryDTO> getAllCategoryDTO() {
//        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        List<GetAllCategoryDTO> list = new ArrayList<>();
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getAllCatalog()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                GetAllCategoryDTO category = new GetAllCategoryDTO();
                category.setId(rs.getInt("Id"));
                category.setCategoryName(rs.getString("CategoryName"));
                category.setDiscriptions(rs.getString("Discriptions"));
                category.setSeasonId(rs.getInt("SeasonId"));
                category.setSupplierId(rs.getInt("SupplierId"));
                category.setSeasonName(rs.getString("SeasonName"));
                category.setSupplierName(rs.getString("SupplierName"));
                list.add(category);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }
}
