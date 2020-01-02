package com.letoy.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.concurrent.ExecutionException;

import com.letoy.action.Factory;
import com.letoy.module.Project;

@WebServlet(name = "ProjectAction")
public class ProjectAction extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        Project newProject = new Project();
        String id=request.getParameter("id");
        String status = request.getParameter("action");
        try{
            if(Factory.getProjectInstance().actionProject(status,id)){
                if(status.equals("pass")||status.equals("fail")) {
                    response.sendRedirect("xm/xmsp.jsp");
                }
                if(status.equals("finish")){
                    response.sendRedirect("xm/xmys.jsp");
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
