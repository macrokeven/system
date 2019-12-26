package com.letoy.action.Project;

import java.util.List;

public interface ProjectApi {
    List showProject(String type);
    boolean actionProject(String action,String id);
}
