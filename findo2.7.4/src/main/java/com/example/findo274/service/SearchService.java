package com.example.findo274.service;

import com.example.findo274.VO.SearchVO;

import java.util.List;

public interface SearchService {
    List<SearchVO> getSearchList(SearchVO svo);
}
