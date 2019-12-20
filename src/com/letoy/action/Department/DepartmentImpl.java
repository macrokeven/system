package com.letoy.action.Department;

import com.letoy.module.Department;

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
}
