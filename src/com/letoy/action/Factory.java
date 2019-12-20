package com.letoy.action;

import com.letoy.action.Career.CareerProxy;
import com.letoy.action.Department.DepartmentProxy;
import com.letoy.action.Project.ProjectProxy;
import com.letoy.action.Teacher.TeacherProxy;
import com.letoy.action.User.UserProxy;

public class Factory {
    public static CareerProxy getCareerInstance(){
        return new CareerProxy();
    }
    public static ProjectProxy getProjectInstance(){
        return new ProjectProxy();
    }
    public static TeacherProxy getTeacherInstance(){
        return new TeacherProxy();
    }
    public static DepartmentProxy getDepartmentInstance(){
        return new DepartmentProxy();
    }
    public static UserProxy getUserInstance(){
        return new UserProxy();
    }
}
