package com.letoy.action.Teacher;

import com.letoy.module.Teacher;
import com.letoy.module.Department;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TeacherImpl implements TeacherApi {
    private Connection con;
    private PreparedStatement pstm;
    public TeacherImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public boolean changeTeacher(Teacher newTeacher) {
        boolean flag = false;
        try{
            String sql = "update teacher set `name` = ?,`sex`=?,`information`=?,`department`=?,`level`=? where `id`=?;";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newTeacher.getName());
            pstm.setString(2,newTeacher.getSex());
            pstm.setString(3,newTeacher.getInformation());
            pstm.setString(4,newTeacher.getDepartment());
            pstm.setString(5,newTeacher.getLevel());
            pstm.setString(6,newTeacher.getId());
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
    public List showTeacher() {
        List<Teacher> list = null;
        try{
            String sql = "select * from teacher;";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Teacher>();
            while(rs.next()){
                Teacher newTeacher = new Teacher();
                newTeacher.setId(rs.getString("id"));
                newTeacher.setName(rs.getString("name"));
                newTeacher.setSex(rs.getString("sex"));
                newTeacher.setInformation(rs.getString("information"));
                newTeacher.setDepartment(rs.getString("department"));
                newTeacher.setLevel(rs.getString("level"));
                list.add(newTeacher);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
}
