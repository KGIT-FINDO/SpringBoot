package com.example.findo274.DAO;

import com.example.findo274.VO.SearchVO;

import java.util.List;

public interface SearchDAO {
    List<SearchVO> getSearchList(SearchVO svo);

    SearchVO getSearchCont(String stocknumber);
}
