package com.example.findo274.DAO;


import com.example.findo274.VO.BoardVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Autowired
    SqlSession sqlSession;


    @Override
    public void insertBoard(BoardVO bvo) {
        sqlSession.insert("board_insert", bvo);
    }

    @Override
    public int getRowCount(BoardVO b) {
        return sqlSession.selectOne("board_getRowCount", b);
    }

    @Override
    public List<BoardVO> getBoardList(BoardVO b) {
        return sqlSession.selectList("board_getBoardList", b);
    }

    @Override
    public BoardVO getBoardCont(int board_no) {
        return sqlSession.selectOne("board_getBoardCont", board_no);
    }

    @Override
    public void updateHit(int board_no) {
        sqlSession.update("board_updateHit", board_no);
    }

    @Override
    public void editBoard(BoardVO boardVO) {
        sqlSession.update("board_editBoard", boardVO);
    }

    @Override
    public void deleteBoard(int board_no) {
        sqlSession.delete("board_deleteBoard", board_no);
    }

}
