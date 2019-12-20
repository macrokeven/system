package com.letoy.sql;

import java.sql.Connection;
import java.sql.DriverManager;

public class
DataBaseConnection {
    private static final String driver = "com.mysql.cj.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost:3306/keyan?serverTimezone=UTC&characterEncoding=UTF-8";
    private static final String user = "root";
    private static final String password = "Zxcvbnm64895579@";
    private Connection con = null;
    public DataBaseConnection() throws Exception {
        try {
            Class.forName(driver);
            con= DriverManager.getConnection(url,user,password);
        }catch (Exception e){
            throw e;
        }
    }
    public Connection getConnection(){
        return con;
    }
    public void close() throws Exception {
        if(con!=null){
            try{
                con.close();
            }catch(Exception e){
                throw e;
            }
        }else{
            System.out.println("数据库关闭失败！");
        }
    }
}