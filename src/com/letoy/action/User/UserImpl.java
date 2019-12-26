package com.letoy.action.User;

import com.letoy.module.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserImpl implements UserApi {
    private Connection con;
    private PreparedStatement pstm;
    public UserImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public boolean changeUser(User newUser) {
        boolean flag = false;
        try{
            String sql = "update user set `name` = ?,`sex`=?,`information`=?,`department`=?,`level`=? where `id`=? and `idf`=?;";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newUser.getName());
            pstm.setString(2,newUser.getSex());
            pstm.setString(3,newUser.getInformation());
            pstm.setString(4,newUser.getDepartment());
            pstm.setString(5,newUser.getLevel());
            pstm.setString(6,newUser.getId());
            pstm.setString(6,newUser.getIdf());
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
    public List showUser(String idf) {
        List<User> list = null;
        try{
            String sql = "select * from user where `idf`=?;";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,idf);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<User>();
            while(rs.next()){
                User newUser = new User();
                newUser.setId(rs.getString("id"));
                newUser.setName(rs.getString("name"));
                newUser.setSex(rs.getString("sex"));
                newUser.setInformation(rs.getString("information"));
                newUser.setDepartment(rs.getString("department"));
                newUser.setLevel(rs.getString("level"));
                list.add(newUser);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List showDetailUser(String id,String type) {
        List<User> list = null;
        try {
            String sql = null;
            switch (type){
                case "career":
                    sql = "select * from user where `career_id` = ?;";
                    break;
                case "department":
                    sql = "select * from user where `department_id` = ?;";
                    break;
                case "position":
                    System.out.println("work");
                    sql = "select * from user where `position_id` = ?;";
                    break;

            }

            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1, id);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<User>();
            while (rs.next()) {
                User newUser = new User();
                newUser.setId(rs.getString("id"));
                newUser.setName(rs.getString("name"));
                newUser.setIdf(rs.getString("idf"));
                newUser.setDepartment(rs.getString("department"));
                newUser.setDepartment_id(rs.getString("department_id"));
                newUser.setPosition(rs.getString("position"));
                newUser.setPosition_id(rs.getString("position_id"));
                newUser.setLevel(rs.getString("level"));
                newUser.setCareer(rs.getString("career"));
                newUser.setCareer_id(rs.getString("career_id"));
                list.add(newUser);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
