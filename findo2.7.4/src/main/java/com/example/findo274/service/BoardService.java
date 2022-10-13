package com.example.findo274.service;

import com.example.findo274.VO.BoardVO;

import java.util.List;

public interface BoardService {
    void insertBoard(BoardVO bvo);

    int getRowCount(BoardVO b);

    List<BoardVO> getBoardList(BoardVO b);

    BoardVO getBoardCont(int board_no);

    BoardVO getBoardCont2(int board_no);

    void editBoard(BoardVO boardVO);
}
