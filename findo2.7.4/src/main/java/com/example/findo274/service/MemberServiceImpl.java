package com.example.findo274.service;

import com.example.findo274.DAO.MemberDAO;
import com.example.findo274.VO.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{
    @Autowired
    MemberDAO memberDAO;

    @Override
    public MemberVO memberLogin(String id) {
        return memberDAO.memberLogin(id);
    }

    @Override
    public void insertMember(MemberVO m) {
        this.memberDAO.insertMember(m);
    }
}
