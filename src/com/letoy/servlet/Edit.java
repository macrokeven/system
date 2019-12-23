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

@WebServlet(name = "Edit")
public class Edit extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        String action = request.getParameter("action");
        if("department".equals(action)){
            Department newDepartment = new Department();
            newDepartment.setLevel(request.getParameter("level"));
            newDepartment.setPeople_number(request.getParameter("people"));
            newDepartment.setName(request.getParameter("name"));
            newDepartment.setId(request.getParameter("id"));
            if(Factory.getDepartmentInstance().changeDepartment(newDepartment)){
                out.println("<script>location.href='charge/department-charge.jsp'</script>");
            }
        }else if("career".equals(action)){
            Career newCareer = new Career();
            newCareer.setLevel(request.getParameter("level"));
            newCareer.setPeople_number(request.getParameter("people"));
            newCareer.setName(request.getParameter("name"));
            newCareer.setId(request.getParameter("id"));
            if(Factory.getCareerInstance().changeCareer(newCareer)){
                out.println("<script>location.href='charge/career-charge.jsp'</script>");
            }
        }else if("teacher".equals(action)){
            User newUser = new User();
            newUser.setLevel(request.getParameter("level"));
            newUser.setDepartment(request.getParameter("department"));
            newUser.setSex(request.getParameter("sex"));
            newUser.setInformation(request.getParameter("information"));
            newUser.setName(request.getParameter("name"));
            newUser.setId(request.getParameter("id"));
            if(Factory.getUserInstance().changeUser(newUser)){
                out.println("<script>location.href='charge/teacher-charge.jsp'</script>");
            }
        }else if("position".equals(action)){
            Position newPosition = new Position();
            newPosition.setLevel(request.getParameter("level"));
            newPosition.setPeople_number(request.getParameter("people"));
            newPosition.setName(request.getParameter("name"));
            newPosition.setId(request.getParameter("id"));
            if(Factory.getPositionInstance().changePosition(newPosition)){
                out.println("<script>location.href='charge/positional-charge.jsp'</script>");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
