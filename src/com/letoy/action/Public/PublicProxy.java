package com.letoy.action.Public;

import com.letoy.sql.DataBaseConnection;

public class PublicProxy implements PublicApi{
    private DataBaseConnection dbc = null;
    private PublicApi dao;
    public PublicProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new PublicImpl(this.dbc.getConnection());
    }

    @Override
    public boolean delete(String type, String id) {
        return this.dao.delete(type,id);
    }
}
