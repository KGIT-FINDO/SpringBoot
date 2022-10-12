package com.example.findo274.DAO;

import com.example.findo274.VO.MemberVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    SqlSession session;


    @Override
    public MemberVO memberLogin(String id) {
        return this.session.selectOne("member_getId",id);
    }

    @Override
    public void insertMember(MemberVO m) {
        this.session.insert("insert_member", m);
    }
}
