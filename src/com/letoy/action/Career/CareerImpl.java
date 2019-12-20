package com.letoy.action.Career;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class CareerImpl implements CareerApi {
    private Connection con;
    private PreparedStatement pstm;
    public CareerImpl(Connection conn) {
        this.con = conn;
    }
}
