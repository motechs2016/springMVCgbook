package com.licyun.model;

import javax.persistence.*;

/**
 * Created by 李呈云
 * Description:
 * 2016/10/7.
 */
@Entity
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column(name = "userid", nullable = false)
    private int userid;

    @Column(name = "message", nullable = false)
    private String message;

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }


    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
