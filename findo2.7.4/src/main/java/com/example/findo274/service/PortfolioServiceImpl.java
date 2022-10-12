package com.example.findo274.service;

import com.example.findo274.DAO.PortfolioDAO;
import org.springframework.beans.factory.annotation.Autowired;

public class PortfolioServiceImpl implements PortfolioService{

    @Autowired
    PortfolioDAO portfolioDAO;
}
