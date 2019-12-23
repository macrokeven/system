package com.letoy.action.Project;


import com.letoy.sql.DataBaseConnection;

import java.util.List;

public class ProjectProxy implements ProjectApi {
    private DataBaseConnection dbc = null;
    private ProjectApi dao;
    public ProjectProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new ProjectImpl(this.dbc.getConnection());
    }
    @Override
    public List showProject() {
        return this.dao.showProject();
    }
}
