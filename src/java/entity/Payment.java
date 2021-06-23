/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author Win 10
 */
public class Payment {
    private int Id;
    private String paymentDate;
    private int orderId;
    private int paymentTypeId;
    private int isDelete;

    public Payment() {
    }

    public Payment(int Id, String paymentDate, int orderId, int paymentTypeId, int isDelete) {
        this.Id = Id;
        this.paymentDate = paymentDate;
        this.orderId = orderId;
        this.paymentTypeId = paymentTypeId;
        this.isDelete = isDelete;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(String paymentDate) {
        this.paymentDate = paymentDate;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getPaymentTypeId() {
        return paymentTypeId;
    }

    public void setPaymentTypeId(int paymentTypeId) {
        this.paymentTypeId = paymentTypeId;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    
}
