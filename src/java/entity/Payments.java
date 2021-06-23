/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.Date;

/**
 *
 * @author Admin
 */
public class Payments {
    private int id;
    private Date paymentDate;
    private int orderId;
    private int PaymentType;
    private int isDelete;

    public Payments() {
    }

    public Payments(int id, Date paymentDate, int orderId, int PaymentType, int isDelete) {
        this.id = id;
        this.paymentDate = paymentDate;
        this.orderId = orderId;
        this.PaymentType = PaymentType;
        this.isDelete = isDelete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getPaymentType() {
        return PaymentType;
    }

    public void setPaymentType(int PaymentType) {
        this.PaymentType = PaymentType;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }
    
    
}
