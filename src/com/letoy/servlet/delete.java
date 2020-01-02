package com.letoy.servlet;

import com.letoy.action.Factory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "delete")
public class delete extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        String id = request.getParameter("id");
        if(Factory.getPublicInstance().delete(action,id)){
            switch (action){
                case "Department":
                    response.sendRedirect("charge/department-charge.jsp");
                break;
                case "position":
                    response.sendRedirect("charge/positional-charge.jsp");
                break;
                case "Career":
                    response.sendRedirect("charge/career-charge.jsp");
                break;
                case "User":
                    response.sendRedirect("charge/user-charge.jsp");
                break;
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
