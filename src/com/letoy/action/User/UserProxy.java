package com.letoy.action.User;

import com.letoy.action.User.UserApi;
import com.letoy.module.LogUser;
import com.letoy.module.User;
import com.letoy.sql.DataBaseConnection;

import java.util.List;

public class UserProxy implements UserApi {
    private DataBaseConnection dbc = null;
    private UserApi dao;

    public UserProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new UserImpl(this.dbc.getConnection());
    }

    @Override
    public boolean changeUser(User newUser) {
        boolean flag = false;
        try{
            if(this.dao.changeUser(newUser)){
                flag= true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List showDetailUser(String id, String type) {
        return this.dao.showDetailUser(id,type);
    }

    @Override
    public int countUser(String table, String name,String condition,String condition2) {
        return this.dao.countUser(table,name,condition,condition2);
    }

    @Override
    public boolean addUser(LogUser newLogUser) {
        return this.dao.addUser(newLogUser);
    }

    @Override
    public boolean addSystemUser(User newUser) {
        return this.dao.addSystemUser(newUser);
    }
}
