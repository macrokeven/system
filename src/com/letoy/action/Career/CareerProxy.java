package com.letoy.action.Career;

import com.letoy.module.Career;
import com.letoy.sql.DataBaseConnection;

import java.util.List;

public class CareerProxy implements CareerApi{
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

    @Override
    public boolean changeCareer(Career newCareer) {
        boolean flag = false;
        try{
            if(this.dao.changeCareer(newCareer)){
                flag= true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List showCareer() {
        return this.dao.showCareer();
    }
}
