package com.example.findo274.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchMapper {
    public String search_list();
    public String search_cont();
}
