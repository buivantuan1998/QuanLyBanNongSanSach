/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.HashMap;
import util.Pagination;

/**
 *
 * @author Win 10
 */
public class PaginationModel {
    public HashMap getDataPagination(int page, int pageSize){
        HashMap hashMap=Pagination.getDataForPagination(page, pageSize, "Products", "Id", "getAllProduct.htm");
        return hashMap;
    }
}
