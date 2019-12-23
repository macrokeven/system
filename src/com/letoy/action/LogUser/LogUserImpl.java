package com.letoy.action.LogUser;

import com.letoy.action.LogUser.LogUserApi;
import com.letoy.module.LogUser;
import com.letoy.module.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LogUserImpl implements LogUserApi {
    private Connection con;
    private PreparedStatement pstm;
    public LogUserImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public LogUser Login(LogUser newLogUser) {
        try{
            String sql = "select * from user_info where `user_id` = ? and `password` = ?";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newLogUser.getId());
            pstm.setString(2,newLogUser.getPwd());
            ResultSet rs = pstm.executeQuery();
            if(rs.next()) {
                newLogUser.setId(rs.getString("id"));
                newLogUser.setIdf_id(rs.getString("idf_id"));
                newLogUser.setLogin_status("login");
            }else{
                newLogUser.setLogin_status("fail");
            }
            pstm.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return newLogUser;
    }


}

