package com.letoy.action.Teacher;


import com.letoy.module.Teacher;

import java.util.List;

public interface TeacherApi {
    boolean changeTeacher(Teacher newTeacher);
    List showTeacher();
}
