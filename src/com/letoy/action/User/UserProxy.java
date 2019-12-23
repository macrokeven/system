package com.letoy.action.User;

import com.letoy.action.User.UserApi;
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
    public List showUser(String idf) {
        return this.dao.showUser(idf);
    }
}
