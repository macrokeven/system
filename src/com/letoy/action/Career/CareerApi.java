package com.letoy.action.Career;


import com.letoy.module.Career;

import java.util.List;

public interface CareerApi {
    boolean changeCareer(Career newCareer);
    boolean addCareer(Career newCareer);
    List showCareer();
}
