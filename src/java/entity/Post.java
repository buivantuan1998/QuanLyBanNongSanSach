/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author Win 10
 */
public class Post {
    private int id;
    private String postTitle;
    private String content;
    private Date createDate;
    private String createBy;
    private String images;
    private int productId;
    private int isDelete;

    public Post() {
    }

    public Post(int id, String postTitle, String content, Date createDate, String createBy, String images, int productId, int isDelete) {
        this.id = id;
        this.postTitle = postTitle;
        this.content = content;
        this.createDate = createDate;
        this.createBy = createBy;
        this.images = images;
        this.productId = productId;
        this.isDelete = isDelete;
    }

    public String getImages() {
        return images;
    }

    public void setImages(String images) {
        this.images = images;
    }

   

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getIsDelete() {
        return isDelete;
    }

    public void setIsDelete(int isDelete) {
        this.isDelete = isDelete;
    }

    
}
