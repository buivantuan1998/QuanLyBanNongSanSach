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
public class ImageLink {
    private int id;
    private String imageLinkName;
    private int productId;
    private int status;
    private int purpose;
    public ImageLink() {
    }

    public ImageLink(int imageLinkId, String imageLinkName, int productId, int status, int purpose) {
        this.id = imageLinkId;
        this.imageLinkName = imageLinkName;
        this.productId = productId;
        this.status = status;
        this.purpose = purpose;
    }

    public int getImageLinkId() {
        return id;
    }

    public void setImageLinkId(int imageLinkId) {
        this.id = imageLinkId;
    }

    public String getImageLinkName() {
        return imageLinkName;
    }

    public void setImageLinkName(String imageLinkName) {
        this.imageLinkName = imageLinkName;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int isStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getPurpose() {
        return purpose;
    }

    public void setPurpose(int purpose) {
        this.purpose = purpose;
    }
    
}
