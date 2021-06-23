/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.HashMap;

/**
 *
 * @author Win 10
 */
public class Pagination {
    public static HashMap getDataForPagination(int page, int pageSize, String table, String tableId, String actionName){
        HashMap map=new HashMap();
        Connection conn=null;
        CallableStatement callSt=null;
        try {
            conn=ConnectionDB.openConnect();
            callSt=conn.prepareCall("{call SP_DisplayPageNo(?,?,?,?,?)}");
            callSt.setInt(1, page);
            callSt.setInt(2, pageSize);
            callSt.setString(3, table);
            callSt.setString(4, actionName);
            callSt.registerOutParameter(5, Types.NVARCHAR);
            callSt.executeQuery();
            String url=callSt.getString(5);
            map.put("url", url);
            callSt=conn.prepareCall("{call SP_Paging(?,?,?,?)}");
            callSt.setInt(1, page);
            callSt.setInt(2, pageSize);
            callSt.setString(3, table);
            callSt.setString(4, tableId);
            ResultSet rs= callSt.executeQuery();
            map.put("rs", rs);
        } catch (Exception e) {
            e.printStackTrace();
        }
        map.put("conn", conn);
        map.put("callSt", callSt);
        return map;
    }
}
