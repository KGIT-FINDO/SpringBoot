package com.example.findo274.mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    public String member_getId();
    public String insert_member();
}
