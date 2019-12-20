package com.letoy.action.User;

import com.letoy.module.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserImpl implements UserApi {
    private Connection con;
    private PreparedStatement pstm;
    public UserImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public User Login(User newUser) {
        try{
            System.out.println(newUser.getId());
            String sql = "select * from user_info where `user_id` = ? and `password` = ?";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newUser.getId());
            pstm.setString(2,newUser.getPwd());
            ResultSet rs = pstm.executeQuery();
            if(rs.next()) {
                newUser.setId(rs.getString("id"));
                newUser.setIdf_id(rs.getString("idf_id"));
                newUser.setLogin_status("login");
            }else{
                newUser.setLogin_status("fail");
            }
            pstm.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return newUser;
    }
}

