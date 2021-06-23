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
public class PaymentType {
    private int id;
    private int paymentTypeName;
    private String discription;
    private int isDelete;

    public PaymentType() {
    }

    public PaymentType(int id, int paymentTypeName, String discription, int isDelete) {
        this.id = id;
        this.paymentTypeName = paymentTypeName;
        this.discription = discription;
        this.isDelete = isDelete;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPaymentTypeName() {
        return paymentTypeName;
    }

    public void setPaymentTypeName(int paymentTypeName) {
        this.paymentTypeName = paymentTypeName;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    
}
