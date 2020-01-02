package com.letoy.servlet;

import com.letoy.action.Factory;
import com.letoy.module.Career;
import com.letoy.module.Department;
import com.letoy.module.Position;
import com.letoy.module.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "addNew")
public class addNew extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");

        if(action.equals("department")){
            Department newDepartment = new Department();
            newDepartment.setName(request.getParameter("name"));
            newDepartment.setLevel(request.getParameter("level"));
            if(Factory.getDepartmentInstance().addDepartment(newDepartment)){
                response.sendRedirect("charge/department-charge.jsp");
            }
        }

        if(action.equals("position")){
            Position newPosition = new Position();
            newPosition.setName(request.getParameter("name"));
            newPosition.setLevel(request.getParameter("level"));
            if(Factory.getPositionInstance().addPosition(newPosition)){
                response.sendRedirect("charge/positional-charge.jsp");
            }
        }

        if(action.equals("career")){
            Career newCareer = new Career();
            newCareer.setName(request.getParameter("name"));
            newCareer.setLevel(request.getParameter("level"));
            if(Factory.getCareerInstance().addCareer(newCareer)){
                response.sendRedirect("charge/career-charge.jsp");
            }
        }


        if(action.equals("user")){
            User newUser = new User();
            newUser.setLevel(request.getParameter("level"));
            newUser.setDepartment(request.getParameter("department_name"));
            newUser.setSex(request.getParameter("sex"));
            newUser.setInformation(request.getParameter("information"));
            newUser.setName(request.getParameter("name"));
            newUser.setDepartment_id(request.getParameter("department_id"));
            newUser.setPosition(request.getParameter("position_name"));
            newUser.setPosition_id(request.getParameter("position_id"));
            newUser.setCareer(request.getParameter("career_name"));
            newUser.setCareer_id(request.getParameter("career_id"));
            if(Factory.getUserInstance().addSystemUser(newUser)){
                response.sendRedirect("charge/user-charge.jsp");
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
