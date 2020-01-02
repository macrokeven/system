package com.letoy.action.Career;

import com.letoy.module.Career;
import com.letoy.module.Department;
import com.letoy.module.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CareerImpl implements CareerApi {
    private Connection con;
    private PreparedStatement pstm;
    public CareerImpl(Connection conn) {
        this.con = conn;
    }

    @Override
    public boolean changeCareer(Career newCareer) {
        boolean flag = false;
        try{
            String sql = "update career set `name` = ?,`people_number`=?,`level`=? where `id`=?;";
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newCareer.getName());
            pstm.setString(2,newCareer.getPeople_number());
            pstm.setString(3,newCareer.getLevel());
            pstm.setString(4,newCareer.getId());
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
    public List showCareer() {
        List<Career> list = null;
        try{
            String sql = "select * from career;";//对表的操作语句
            PreparedStatement pstm = con.prepareStatement(sql);
            ResultSet rs = pstm.executeQuery();
            list = new ArrayList<Career>();
            while(rs.next()){
                Career newCareer = new Career();
                newCareer.setId(rs.getString("id"));
                newCareer.setName(rs.getString("name"));
                newCareer.setPeople_number(rs.getString("people_number"));
                newCareer.setLevel(rs.getString("level"));
                list.add(newCareer);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return list;
    }
    @Override
    public boolean addCareer(Career newCareer) {
        boolean flag = false;
        String sql = "insert into career (name,people_number,level) values (?,0,?)";
        try {
            PreparedStatement pstm = con.prepareStatement(sql);
            pstm.setString(1,newCareer.getName());
            pstm.setString(2,newCareer.getLevel());
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
