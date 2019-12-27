package com.letoy.servlet;

import com.letoy.action.Factory;
import com.letoy.module.LogUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Register")
public class Register extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println(request.getParameter("user_id"));
        LogUser newLogUser = new LogUser();
        newLogUser.setId(request.getParameter("user_id"));
        newLogUser.setIdf_id(request.getParameter("idf_id"));
        newLogUser.setPwd(request.getParameter("user_pwd"));
        if(Factory.getUserInstance().addUser(newLogUser)){
            response.sendRedirect("index.jsp");
        }else{
            out.println("<script>alert('注册失败!');</script>");
            response.sendRedirect("index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
