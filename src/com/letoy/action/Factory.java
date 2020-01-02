package com.letoy.action;

import com.letoy.action.Career.CareerProxy;
import com.letoy.action.Department.DepartmentProxy;
import com.letoy.action.LogUser.LogUserProxy;
import com.letoy.action.Position.PositionProxy;
import com.letoy.action.Project.ProjectProxy;
import com.letoy.action.Public.PublicProxy;
import com.letoy.action.User.UserProxy;

public class Factory {
    public static CareerProxy getCareerInstance(){
        return new CareerProxy();
    }
    public static ProjectProxy getProjectInstance(){
        return new ProjectProxy();
    }
    public static LogUserProxy getLogUserInstance(){
        return new LogUserProxy();
    }
    public static DepartmentProxy getDepartmentInstance(){
        return new DepartmentProxy();
    }
    public static UserProxy getUserInstance(){
        return new UserProxy();
    }
    public static PositionProxy getPositionInstance(){
        return new PositionProxy();
    }
    public static PublicProxy getPublicInstance(){return new PublicProxy();}
}
