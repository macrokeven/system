package com.letoy.action.Department;

import com.letoy.action.Career.CareerApi;
import com.letoy.module.Department;
import com.letoy.sql.DataBaseConnection;

import java.util.List;

public class DepartmentProxy implements DepartmentApi{
    private DataBaseConnection dbc = null;
    private DepartmentApi dao;
    public DepartmentProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new DepartmentImpl(this.dbc.getConnection());
    }
    public List showDepartment(){
        return this.dao.showDepartment();
    }
}