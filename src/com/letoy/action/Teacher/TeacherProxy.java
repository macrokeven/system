package com.letoy.action.Teacher;

import com.letoy.module.Teacher;
import com.letoy.sql.DataBaseConnection;

import java.util.List;

public class TeacherProxy implements TeacherApi{
    private DataBaseConnection dbc = null;
    private TeacherApi dao;

    public TeacherProxy(){
        try{
            this.dbc = new DataBaseConnection();

        }catch (Exception e){
            e.printStackTrace();
        }
        this.dao = new TeacherImpl(this.dbc.getConnection());
    }

    @Override
    public boolean changeTeacher(Teacher newTeacher) {
        boolean flag = false;
        try{
            if(this.dao.changeTeacher(newTeacher)){
                flag= true;
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List showTeacher() {
        return this.dao.showTeacher();
    }
}
