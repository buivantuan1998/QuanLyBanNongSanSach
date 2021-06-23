/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author TuyenMap
 */
public class Order {

    private int orderId;
    private String orderName;
    private String orderNumber;
    private String phoneNumber;
    private String email;
    private String address;
    private float totalAmount;
    private Date paymentDate;
    private Date createDate;
    private int isDelete;
    private int userId;

    public Order() {
    }

    public Order(int orderId, String orderName, String orderNumber, String phoneNumber, String email, String address, float totalAmount, Date paymentDate, Date createDate, int isDelete, int userId) {
        this.orderId = orderId;
        this.orderName = orderName;
        this.orderNumber = orderNumber;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.totalAmount = totalAmount;
        this.paymentDate = paymentDate;
        this.createDate = createDate;
        this.isDelete = isDelete;
        this.userId = userId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }


    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(Float totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    
}
