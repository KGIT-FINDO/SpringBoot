package com.example.findo274.service;

import com.example.findo274.VO.MemberVO;

public interface MemberService {
    MemberVO memberLogin(String id);

    void insertMember(MemberVO m);
}
