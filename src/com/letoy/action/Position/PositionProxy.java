package com.letoy.action.Position;

import com.letoy.action.Career.CareerApi;
import com.letoy.action.Position.PositionApi;
import com.letoy.action.Position.PositionImpl;
import com.letoy.module.Position;
import com.letoy.sql.DataBaseConnection;

import java.util.List;

public class PositionProxy implements PositionApi {
    private DataBaseConnection dbc = null;
    private PositionApi dao;
    public PositionProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new PositionImpl(this.dbc.getConnection());
    }
    public List showPosition(){
        return this.dao.showPosition();
    }

    @Override
    public boolean changePosition(Position newPosition) {
        return this.dao.changePosition(newPosition);
    }

    @Override
    public List showDetailPosition() {
        return this.dao.showDetailPosition();
    }

    @Override
    public boolean addPosition(Position newPosition) {
        return this.dao.addPosition(newPosition);
    }
}