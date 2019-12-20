package com.letoy.action.Career;

import com.letoy.sql.DataBaseConnection;

public class CareerProxy {
    private DataBaseConnection dbc = null;
    private CareerApi dao;

    public CareerProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new CareerImpl(this.dbc.getConnection());
    }
}
