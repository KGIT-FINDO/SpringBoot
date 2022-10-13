package com.example.findo274.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardMapper {

    public String board_insert();

    public String board_getRowCount();

    public String board_getBoardCont();

    public String board_updateHit();

    public String board_editBoard();
}
