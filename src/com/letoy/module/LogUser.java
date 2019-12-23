package com.letoy.module;

public class LogUser {


    private String id;
    private String user_id;
    private String pwd;
    private String idf_id;
    private String name;
    private String login_status;

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getIdf_id() {
        return idf_id;
    }

    public void setIdf_id(String idf_id) {
        this.idf_id = idf_id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLogin_status() {
        return login_status;
    }

    public void setLogin_status(String login_status) {
        this.login_status = login_status;
    }
}
