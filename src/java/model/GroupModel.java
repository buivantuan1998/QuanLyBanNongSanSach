/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Group;
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
public class GroupModel {
    public List<Group> GetAllGroup(){
        Connection conn=null;
        CallableStatement callst=null;
        List<Group> list=new ArrayList<>();
        try {
            conn=ConnectionDB.openConnect();
            callst=conn.prepareCall("{call GetAllGroup()}");
            ResultSet rs=callst.executeQuery();
            while(rs.next()){
                Group g=new Group();
                g.setGroupId(rs.getInt("Id"));
                g.setGroupName(rs.getString("GroupName"));
                g.setStatus(rs.getInt("Statuss"));
                list.add(g);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callst);
        }
        return list;
    }
    public boolean InsertGroup(Group group){
        Connection conn=null;
        CallableStatement callSt=null;
        boolean check=false;
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call InsertGroup(?)}");
            callSt.setString(1, group.getGroupName());
            callSt.executeUpdate();
            check=true;
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return check;
    }
}
