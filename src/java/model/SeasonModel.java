/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Season;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import util.ConnectionDB;

/**
 *
 * @author ADMIN
 */
public class SeasonModel {
        public List<Season> getAllSeason(){
        Connection conn=null;
        CallableStatement callSt=null;
        List<Season> list=new ArrayList<Season>();
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call getAllSeason()}");
            ResultSet rs=callSt.executeQuery();
            while(rs.next()){
                Season s = new Season();
                s.setId(rs.getInt("Id"));
                s.setSeasonName(rs.getString("SeasonName"));
                s.setStartTime(rs.getString("StartTime"));
                s.setEndTime(rs.getString("EndTime"));
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            ConnectionDB.closeConnect(conn, callSt);
        }
        return list;
    }
}
