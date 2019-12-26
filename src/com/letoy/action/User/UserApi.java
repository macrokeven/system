package com.letoy.action.User;


import com.letoy.module.User;

import java.util.List;

public interface UserApi {
    boolean changeUser(User newUser);
    List showDetailUser(String id,String type);
    int countUser(String table, String name,String condition,String condition2);
}
