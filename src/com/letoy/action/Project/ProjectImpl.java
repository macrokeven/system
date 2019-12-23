package com.letoy.action.Project;

import com.letoy.module.Project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProjectImpl implements ProjectApi {
    private Connection con;
    private PreparedStatement pstm;
    public ProjectImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public List showProject() {
        List<Project> list = null;
        try{
            String sql = "select * from project;";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Project>();
            while(rs.next()){
                Project newProject = new Project();
                newProject.setId(rs.getString("id"));
                newProject.setName(rs.getString("name"));
                newProject.setCharger_id(rs.getString("charger_id"));
                newProject.setStatus(rs.getString("status"));
                newProject.setCharger_name(rs.getString("charger_name"));
                list.add(newProject);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
}