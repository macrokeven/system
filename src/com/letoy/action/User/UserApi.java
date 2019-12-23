package com.letoy.action.User;


import com.letoy.module.User;

import java.util.List;

public interface UserApi {
    boolean changeUser(User newUser);
    List showUser(String idf);
}
