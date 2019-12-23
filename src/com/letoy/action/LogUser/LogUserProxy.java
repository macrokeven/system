package com.letoy.action.LogUser;

import com.letoy.module.LogUser;
import com.letoy.sql.DataBaseConnection;

public class LogUserProxy {
    private DataBaseConnection dbc = null;
    private LogUserApi dao = null;
    public LogUserProxy(){
        try{
            this.dbc = new DataBaseConnection();
        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao =  new LogUserImpl(this.dbc.getConnection());
    }

    public LogUser Login(LogUser newLogUser) throws Exception{
        try {
            newLogUser = this.dao.Login(newLogUser);
            this.dbc.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        return newLogUser;
    }


}
