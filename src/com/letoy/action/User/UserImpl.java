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
            String sql = "update user set `name` = ?,`sex`=?,`department`=?,`level`=?,`department_id`=?,`position`=?,`position_id`=?,`career`=?,`career_id`=? where `id`=?;";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newUser.getName());
            pstm.setString(2,newUser.getSex());
            pstm.setString(3,newUser.getDepartment());
            pstm.setString(4,newUser.getLevel());
            pstm.setString(5,newUser.getDepartment_id());
            pstm.setString(6,newUser.getPosition());
            pstm.setString(7,newUser.getPosition_id());
            pstm.setString(8,newUser.getCareer());
            pstm.setString(9,newUser.getCareer_id());
            pstm.setString(10,newUser.getId());
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
                    sql = "select * from user where `position_id` = ?;";
                    break;
                case "one":
                    sql = "select * from user where `id` = ?;";
                    break;
                case "idf":
                    sql = "select * from user where `idf` = ?;";
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
                newUser.setInformation(rs.getString("information"));
                newUser.setSex(rs.getString("sex"));
                list.add(newUser);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public int countUser(String table, String name,String condition,String condition2) {
        int count = 0;
        if("none".equals(condition)){
            try {
                String sql = "SELECT COUNT(?) FROM "+table;//对表的操作语句
                PreparedStatement pstm = con.prepareStatement(sql);
                pstm.setString(1,name);
                ResultSet rs = pstm.executeQuery();
                while (rs.next()) {
                    count = rs.getInt(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }else{
            try {
                String sql = "SELECT COUNT(?) FROM "+table+" WHERE ? = ?";//对表的操作语句
                PreparedStatement pstm = con.prepareStatement(sql);
                pstm.setString(1,name);
                pstm.setString(2,condition);
                pstm.setString(3,condition2);
                ResultSet rs = pstm.executeQuery();
                while (rs.next()) {
                    count = rs.getInt(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return count;
    }
}
