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
public class Group {
    private int id;
    private String groupName;
    private int status;

    public Group() {
    }

    public Group(int groupId, String groupName, int status) {
        this.id = groupId;
        this.groupName = groupName;
        this.status = status;
    }
    
    public int getGroupId() {
        return id;
    }

    public void setGroupId(int groupId) {
        this.id = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public int isStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    
}
