package com.example.findo274.DAO;

import com.example.findo274.VO.MemberVO;

public interface MemberDAO  {
    MemberVO memberLogin(String id);

    void insertMember(MemberVO m);
}
