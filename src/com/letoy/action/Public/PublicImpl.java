package com.letoy.action.Public;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class PublicImpl implements PublicApi {
    private Connection con;
    private PreparedStatement pstm;
    public PublicImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public boolean delete(String type, String id) {
        boolean flag = false;
        try{
            String sql = "delete from "+type+" where `id` = ?";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,id);
            if(pstm.executeLargeUpdate()==1){
                flag = true;
            }
            con.close();
        }catch (SQLException e){
            e.printStackTrace();
        }
        return flag;
    }
}
