package com.example.findo274.service;

import com.example.findo274.DAO.BoardDAO;
import com.example.findo274.VO.BoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService{

    @Autowired
    BoardDAO boardDAO;

    @Override
    public void insertBoard(BoardVO bvo) {
        this.boardDAO.insertBoard(bvo);
    }

    @Override
    public int getRowCount(BoardVO b) {
        return this.boardDAO.getRowCount(b);
    }

    @Override
    public List<BoardVO> getBoardList(BoardVO b) {
        return this.boardDAO.getBoardList(b);
    }

    @Override
    @Transactional
    public BoardVO getBoardCont(int board_no) {
        this.boardDAO.updateHit(board_no);
        return this.boardDAO.getBoardCont(board_no);
    }

    @Override
    public BoardVO getBoardCont2(int board_no) {
        return this.boardDAO.getBoardCont(board_no);
    }

    @Override
    public void editBoard(BoardVO boardVO) {
        this.boardDAO.editBoard(boardVO);
    }

    @Override
    public void deleteBoard(int board_no) {
        this.boardDAO.deleteBoard(board_no);
    }
}
