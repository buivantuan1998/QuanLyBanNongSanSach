/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.New;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import util.ConnectionDB;

/**
 *
 * @author Win 10
 */
public class NewModel {
    public List<New> getAllNew(){
        SimpleDateFormat format=new SimpleDateFormat("dd-MM-yyyy");
        ArrayList<New> listNew=new ArrayList<New>();
        Connection conn=null;
        CallableStatement callSt=null;
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call getAllPost()}");
            ResultSet rs=callSt.executeQuery();
            while(rs.next()){
                New n=new New();
                n.setPostId(rs.getInt("PostId"));
                n.setPostTitle(rs.getString("PostTitle"));
                n.setContent(rs.getString("Content"));
                n.setStatus(rs.getBoolean("Status"));
                n.setDisplayNumber(rs.getInt("DisplayNumber"));
                if(rs.getDate("Created")!=null){
                    n.setCreated(format.format(rs.getDate("Created")));
                }
                n.setContentDetail(rs.getString("ContentDetail"));
                n.setImages(rs.getString("Images"));
                listNew.add(n);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return listNew;
    }
}
