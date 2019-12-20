package com.letoy.servlet;

import com.letoy.action.Factory;
import com.letoy.module.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        User lgUser = new User();
        lgUser.setId(request.getParameter("id"));
        lgUser.setPwd(request.getParameter("pwd"));
            try {
                lgUser = Factory.getUserInstance().Login(lgUser);
                if("failed".equals(lgUser.getLogin_status())){
                    out.println("<script>alert('用户名或者密码错误！');location.href='index.jsp'</script>");
                }
                if("login".equals(lgUser.getLogin_status())){
                    out.println("<script>location.href='main.jsp'</script>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
