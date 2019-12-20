package com.letoy.action.User;

import com.letoy.module.User;
import com.letoy.sql.DataBaseConnection;

public class UserProxy {
    private DataBaseConnection dbc = null;
    private UserApi dao = null;
    public UserProxy(){
        try{
            this.dbc = new DataBaseConnection();
        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao =  new UserImpl(this.dbc.getConnection());
    }

    public User Login(User newUser) throws Exception{
        try {
            newUser = this.dao.Login(newUser);
            this.dbc.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return newUser;
    }


}
