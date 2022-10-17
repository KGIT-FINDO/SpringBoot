package com.example.findo274.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MainController {

    @Autowired



    @GetMapping("/")
    public String Main(){
        return "index";
    }

    @Transactional
    @GetMapping("/portfolio")
    public String Portfolio(HttpServletRequest request, HttpServletResponse response, HttpSession session){

    String sessionId = (String) session.getAttribute("id");

    if(sessionId != null){

    }


        return "index_portfolio";
    }



    @GetMapping("/news")
    public String News(){
        return "index_news";
    }

    @GetMapping("/search")
    String index_search(){

        return "index_search";
    }



}
