/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

/**
 *
 * @author ADMIN
 */
public class GetAllCategoryDTO {
    private int id;
    private String categoryName;
    private String discriptions;
    private int seasonId;
    private int supplierId;
    private String seasonName;
    private String supplierName;

    public GetAllCategoryDTO() {
    }

    public GetAllCategoryDTO(int id, String categoryName, String discriptions, int seasonId, int supplierId, String seasonName, String supplierName) {
        this.id = id;
        this.categoryName = categoryName;
        this.discriptions = discriptions;
        this.seasonId = seasonId;
        this.supplierId = supplierId;
        this.seasonName = seasonName;
        this.supplierName = supplierName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getDiscriptions() {
        return discriptions;
    }

    public void setDiscriptions(String discriptions) {
        this.discriptions = discriptions;
    }

    public int getSeasonId() {
        return seasonId;
    }

    public void setSeasonId(int seasonId) {
        this.seasonId = seasonId;
    }

    public int getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(int supplierId) {
        this.supplierId = supplierId;
    }

    public String getSeasonName() {
        return seasonName;
    }

    public void setSeasonName(String seasonName) {
        this.seasonName = seasonName;
    }

    public String getSupplierName() {
        return supplierName;
    }

    public void setSupplierName(String supplierName) {
        this.supplierName = supplierName;
    }
    
    
    
}
