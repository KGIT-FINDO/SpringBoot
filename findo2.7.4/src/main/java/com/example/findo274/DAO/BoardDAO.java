package com.example.findo274.DAO;

import com.example.findo274.VO.BoardVO;

import java.util.List;

public interface BoardDAO {
    public default void insertBoard(BoardVO bvo) {}

    int getRowCount(BoardVO b);

    List<BoardVO> getBoardList(BoardVO b);

    BoardVO getBoardCont(int board_no);

    void updateHit(int board_no);

    void editBoard(BoardVO boardVO);
}
