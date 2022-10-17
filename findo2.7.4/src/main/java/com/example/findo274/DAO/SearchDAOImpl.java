package com.example.findo274.DAO;

import com.example.findo274.VO.SearchVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SearchDAOImpl implements SearchDAO {

    @Autowired
    SqlSession session;

    @Override
    public List<SearchVO> getSearchList(SearchVO svo) {
        return this.session.selectList("search_list", svo);
    }
}
