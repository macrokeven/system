package com.letoy.action.Department;

import com.letoy.module.Department;
import com.letoy.module.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DepartmentImpl implements DepartmentApi {
    private Connection con;
    private PreparedStatement pstm;
    public DepartmentImpl(Connection conn) {
        this.con = conn;
    }
    @Override
    public List showDepartment() {
        List<Department> list = null;
        try{
            String sql = "select * from department;";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Department>();
            while(rs.next()){
                Department newDepartment = new Department();
                newDepartment.setId(rs.getString("id"));
                newDepartment.setName(rs.getString("name"));
                newDepartment.setPeople_number(rs.getString("people_number"));
                newDepartment.setLevel(rs.getString("level"));
                list.add(newDepartment);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean changeDepartment(Department newDepartment) {
        boolean flag = false;
        try{
            String sql = "update department set `name` = ?,`people_number`=?,`level`=? where `id`=?;";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newDepartment.getName());
            pstm.setString(2,newDepartment.getPeople_number());
            pstm.setString(3,newDepartment.getLevel());
            pstm.setString(4,newDepartment.getId());
            if(pstm.executeLargeUpdate()==1){
                flag = true;
            }
            con.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public List showDetailDepartment() {
        List<Department> list = null;
        try {

            String sql = "select * from department;";
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Department>();
            while (rs.next()) {
                Department newDepartment = new Department();
                newDepartment.setId(rs.getString("id"));
                newDepartment.setName(rs.getString("name"));
                newDepartment.setPeople_number(rs.getString("people_number"));
                newDepartment.setLevel(rs.getString("level"));
                list.add(newDepartment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean addDepartment(Department newDepartment) {
        boolean flag = false;
        String sql = "insert into department(name,people_number,level) values (?,0,?)";
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newDepartment.getName());
            pstm.setString(2,newDepartment.getLevel());
            if(pstm.executeLargeUpdate()==1){
                flag = true;
            }
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;

    }
}
