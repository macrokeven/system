package com.letoy.action.Department;

import com.letoy.module.Department;

import java.util.List;

public interface DepartmentApi {
    List showDepartment();
    boolean changeDepartment(Department newDepartment);
}
