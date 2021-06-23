/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Categorys;
import entity.Discount;
import entity.ImageLink;
import entity.Products;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import util.ConnectionDB;

/**
 *
 * @author Win 10
 */
public class ProductModel {

    //them san pham
    public boolean insertProduct(Products p) {
        Connection conn = null;
        CallableStatement callSt = null;
        boolean check = false;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call insertProduct(?,?,?,?,?,?,?,?,?,?)}");
            callSt.setString(1, p.getProductName());
            callSt.setFloat(2, p.getPriceInput());
            callSt.setFloat(3, p.getPriceOutput());
            callSt.setInt(4, p.getQuantity());
            callSt.setString(5, p.getImages());
            callSt.setInt(6, p.getStatus());           
            callSt.setString(7, p.getDiscription());
            callSt.setInt(8, p.getCategoryId());
            callSt.setInt(9, p.getDiscountId());
            callSt.setString(10, p.getUnit());
            callSt.executeUpdate();
            check = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return check;
    }

    // lay ra tat ca san pham
    public List<Products> getAllProduct() {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        ArrayList<Products> list = new ArrayList<Products>();
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getAllProduct()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                Categorys c = new Categorys();
                Discount d = new Discount();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                c.setCategoryName(rs.getString("CategoryName"));
                String categoryName = c.getCategoryName();
                p.setCategoryName(categoryName);
                p.setDiscountId(rs.getInt("DisCountId"));
                d.setValue(rs.getFloat("Value"));
                float valueDiscount = d.getValue();
                p.setValue(valueDiscount);
                p.setBuyItem(rs.getInt("BuyItem"));
                p.setViews(rs.getInt("Views"));
                p.setUnit(rs.getString("unit"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }

    //lay ra 8 san pham co luong mua lon nhat
    public List<Products> getProductHot() {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        ArrayList<Products> list = new ArrayList<Products>();
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getProductHot()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }

    //la ra 8 san pham moi nhat
    public List<Products> getProductNew() {
        ArrayList<Products> list = new ArrayList<Products>();
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getProductNew()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }

    //Lay ra tat ca san pham co khuyen mai
    public List<Products> getProductDiscount() {
        ArrayList<Products> list = new ArrayList<Products>();
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getProductDiscount()}");
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
               Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }

    //Lay san pham theo danh muc
    public List<Products> getProductByCatalogId(int catalogId) {
        ArrayList<Products> list = new ArrayList<Products>();
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getProductByCatalogId(?)}");
            callSt.setInt(1, catalogId);
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                list.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }

    //Lay san pham theo nha cung cap
    public List<Products> getProductByProviderId(int providerId) {
        ArrayList<Products> listProduct = new ArrayList<Products>();
        Connection conn = null;
        CallableStatement callSt = null;
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getProductByProviderId(?)}");
            callSt.setInt(1, providerId);
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                listProduct.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return listProduct;
    }

    //Lay san pham theo id
    public Products getProductById(int productId) {
        Connection conn = null;
        CallableStatement callSt = null;
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Products p = new Products();
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getProductById(?)}");
            callSt.setInt(1, productId);
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));           
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return p;
    }

    //Lay nhung san pham co lien quan
    public List<Products> getProductRelated(Products pro) {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement calla = null;
        List<Products> list = new ArrayList<Products>();
        ResultSet rs;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{ call getProductRelated(?,?)}");
            calla.setInt(1, pro.getCategoryId());
            calla.setInt(2, pro.getId());
            rs = calla.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                list.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return list;
    }

    //Lay danh sach anh de hien thi trong slide cua san pham
    public List<ImageLink> getImageLink(int id) {
        ArrayList<ImageLink> listImageLink = new ArrayList<ImageLink>();
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getImageLink(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                ImageLink il = new ImageLink();
                il.setImageLinkId(rs.getInt("ImageLinkId"));
                il.setImageLinkName(rs.getString("ImageLinkName"));
                il.setProductId(rs.getInt("ProductId"));
                il.setStatus(rs.getInt("Status"));
                il.setPurpose(rs.getInt("Purpose"));
                listImageLink.add(il);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return listImageLink;
    }
    //Lay danh sach anh de hien thi trong mo ta san pham

    public List<ImageLink> getImageLinkDetail(int id) {
        ArrayList<ImageLink> listImageLink = new ArrayList<ImageLink>();
        Connection conn = null;
        CallableStatement callSt = null;
        try {
            conn = ConnectionDB.openConnect();
            callSt = conn.prepareCall("{call getImageLink1(?)}");
            callSt.setInt(1, id);
            ResultSet rs = callSt.executeQuery();
            while (rs.next()) {
                ImageLink il = new ImageLink();
                il.setImageLinkId(rs.getInt("ImageLinkId"));
                il.setImageLinkName(rs.getString("ImageLinkName"));
                il.setProductId(rs.getInt("ProductId"));
                il.setStatus(rs.getInt("Status"));
                il.setPurpose(rs.getInt("Purpose"));
                listImageLink.add(il);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, callSt);
        }
        return listImageLink;
    }

    public List<Products> searchProduct(String name) {
        Connection conn = null;
        CallableStatement calla = null;
        ArrayList<Products> listProduct = new ArrayList<Products>();
        ResultSet rs;
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{ call search(?)}");
            calla.setString(1, name);
            rs = calla.executeQuery();
            while (rs.next()) {
                Products p = new Products();
                p.setId(rs.getInt("Id"));
                p.setProductName(rs.getString("ProductName"));
                p.setPriceInput(rs.getFloat("PriceInput"));
                p.setPriceOutput(rs.getFloat("PriceOutput"));
                p.setQuantity(rs.getInt("Quantity"));
                p.setImages(rs.getString("Images"));
                p.setCreateDate(rs.getDate("CreateDate"));
                p.setUpdateDate(rs.getDate("UpdateDate"));
                p.setStatus(rs.getInt("Statuss"));
                p.setDiscription(rs.getString("Discription"));
                p.setCategoryId(rs.getInt("CategoryId"));
                p.setDiscountId(rs.getInt("DisCountId"));
                listProduct.add(p);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return listProduct;
    }

    public boolean updateProduct(Products product) throws ParseException {
        SimpleDateFormat fomat = new SimpleDateFormat("dd-MM-yyyy");
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call UpdateProduct(?,?,?,?,?,?,?,?,?)}");
            calla.setInt(1, product.getId());
            calla.setString(2, product.getProductName());
            calla.setFloat(3, product.getPriceInput());
            calla.setFloat(4, product.getPriceOutput());
            calla.setInt(5, product.getQuantity());
            calla.setInt(6, product.getStatus());           
            calla.setString(7, product.getDiscription());
            calla.setInt(8, product.getCategoryId());
            calla.setInt(9, product.getDiscountId()); 
            calla.executeUpdate();  
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return result;
    }
    
    public boolean deleteProduct(int id){
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call deleteProduct(?)}");
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
    
     public boolean updateImageProduct(Products product) throws ParseException {
        Connection conn = null;
        CallableStatement calla = null;
        boolean result = false;
        try {
            conn = ConnectionDB.openConnect();
            calla = conn.prepareCall("{call updateImageProduct(?,?)}");
            calla.setInt(1, product.getId());
            calla.setString(2, product.getImages());
            System.out.println("Product Id: "+product.getId());
            System.out.println("Image product: "+product.getImages());
            calla.executeUpdate();  
            result = true;
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            ConnectionDB.closeConnect(conn, calla);
        }
        return result;
    }
}
