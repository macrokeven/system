package com.letoy.servlet;

import com.letoy.action.Factory;
import com.letoy.module.LogUser;
import com.letoy.module.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@WebServlet(name = "Login")
public class Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        LogUser lgUser = new LogUser();
        lgUser.setId(request.getParameter("id"));
        lgUser.setPwd(request.getParameter("pwd"));
        User newUser = null;
        HttpSession session = request.getSession();
            try {
                lgUser = Factory.getLogUserInstance().Login(lgUser);
                if("failed".equals(lgUser.getLogin_status())){
                    out.println("<script>alert('用户名或者密码错误！');location.href='index.jsp'</script>");
                }
                if("login".equals(lgUser.getLogin_status())){
                    try {
                        List user = Factory.getUserInstance().showDetailUser(lgUser.getIdf_id(),"one");
                        System.out.println(lgUser.getIdf_id());
                        Iterator iter = user.iterator();
                        while(iter.hasNext()) {
                            newUser = (User) iter.next();
                            session.setAttribute("user_id",newUser.getId() );
                            session.setAttribute("user_idf",newUser.getIdf());
                            session.setAttribute("user_name",newUser.getName());
                            session.setAttribute("user_level",newUser.getLevel());
                            session.setAttribute("status", "login");
                            System.out.println(newUser.getName());
                        }
                    }catch (Exception e){
                        e.printStackTrace();
                    }
                    response.sendRedirect("main.jsp");

                }
            } catch (Exception e) {
                e.printStackTrace();
            }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
