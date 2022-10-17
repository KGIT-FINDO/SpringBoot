package com.example.findo274.controller;

import com.example.findo274.VO.SearchVO;
import com.example.findo274.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SearchController {
    @Autowired
    SearchService searchService;

    @RequestMapping("/search_list")
        String index_search_ok(Model listM, HttpSession session, HttpServletResponse response, HttpServletRequest request, SearchVO svo) {

        String find_name = request.getParameter("find_name");
        svo.setFind_name("%"+find_name+"%");

        System.out.println(find_name);
        List<SearchVO> slist = this.searchService.getSearchList(svo);
        listM.addAttribute("slist", slist);
        listM.addAttribute("find_name", find_name);
        return "search_list";
    }
}
