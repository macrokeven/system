package com.letoy.action.Position;

import com.letoy.action.Position.PositionApi;
import com.letoy.module.Position;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PositionImpl implements PositionApi {

    private Connection con;
    private PreparedStatement pstm;
    public PositionImpl(Connection conn) {
        this.con = conn;
    }
    @Override
    public List showPosition() {
        List<Position> list = null;
        try{
            String sql = "select * from position;";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Position>();
            while(rs.next()){
                Position newPosition = new Position();
                newPosition.setId(rs.getString("id"));
                newPosition.setName(rs.getString("name"));
                newPosition.setPeople_number(rs.getString("people_number"));
                newPosition.setLevel(rs.getString("level"));
                list.add(newPosition);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public boolean changePosition(Position newPosition) {
        boolean flag = false;
        try{
            String sql = "update position set `name` = ?,`people_number`=?,`level`=? where `id`=?;";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newPosition.getName());
            pstm.setString(2,newPosition.getPeople_number());
            pstm.setString(3,newPosition.getLevel());
            pstm.setString(4,newPosition.getId());
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
    public List showDetailPosition() {
        List<Position> list = null;
        try {

            String sql = "select * from position;";
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Position>();
            while (rs.next()) {
                Position newPosition = new Position();
                newPosition.setId(rs.getString("id"));
                newPosition.setName(rs.getString("name"));
                newPosition.setPeople_number(rs.getString("people_number"));
                newPosition.setLevel(rs.getString("level"));
                list.add(newPosition);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
