/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author Win 10
 */
public class Products {
    private int id;
    private String productName;
    private float priceInput;
    private float priceOutput;
    private int quantity;
    private String images;
    private Date createDate;
    private Date updateDate;
    private int status;
    private String discription;
    private int categoryId;
    private int discountId;
    private int isDelete;
    private String categoryName;
    private float value;
    private int buyItem;
    private String unit;
    private int views;

    public Products() {
    }

    public Products(int id, String productName, float priceInput, float priceOutput, int quantity, String images, Date createDate, Date updateDate, int status, String discription, int categoryId, int discountId, int isDelete, String categoryName, float value, int buyItem, String unit, int views) {
        this.id = id;
        this.productName = productName;
        this.priceInput = priceInput;
        this.priceOutput = priceOutput;
        this.quantity = quantity;
        this.images = images;
        this.createDate = createDate;
        this.updateDate = updateDate;
        this.status = status;
        this.discription = discription;
        this.categoryId = categoryId;
        this.discountId = discountId;
        this.isDelete = isDelete;
        this.categoryName = categoryName;
        this.value = value;
        this.buyItem = buyItem;
        this.unit = unit;
        this.views = views;
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

    public float getValue() {
        return value;
    }

    public void setValue(float value) {
        this.value = value;
    }

    public int getBuyItem() {
        return buyItem;
    }

    public void setBuyItem(int buyItem) {
        this.buyItem = buyItem;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public float getPriceInput() {
        return priceInput;
    }

    public void setPriceInput(float priceInput) {
        this.priceInput = priceInput;
    }

    public float getPriceOutput() {
        return priceOutput;
    }

    public void setPriceOutput(float priceOutput) {
        this.priceOutput = priceOutput;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public int getDiscountId() {
        return discountId;
    }

    public void setDiscountId(int discountId) {
        this.discountId = discountId;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }
    
    
}
