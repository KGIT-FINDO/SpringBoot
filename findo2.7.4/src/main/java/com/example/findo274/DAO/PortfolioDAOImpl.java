package com.example.findo274.DAO;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PortfolioDAOImpl implements PortfolioDAO{

    @Autowired
    SqlSession sqlSession;
}
