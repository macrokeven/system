package com.letoy.action.Position;

import com.letoy.module.Position;

import java.util.List;

public interface PositionApi {
    public List showPosition();
    boolean changePosition(Position newPosition);
    List showDetailPosition();
}
