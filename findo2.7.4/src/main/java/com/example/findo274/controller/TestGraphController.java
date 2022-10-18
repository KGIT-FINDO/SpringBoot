package com.example.findo274.controller;

import com.example.findo274.VO.TestStockVO;
import com.example.findo274.stock.StockInfo;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.io.IOException;

@Controller
public class TestGraphController {

    @GetMapping("testg")
    public String test(){
        return "testg";
    }

    @GetMapping("/test")
    public String graphTest(Model m, TestStockVO svo) throws ParseException, IOException {

        StockInfo stockInfo = new StockInfo();

        m.addAttribute("s", stockInfo.getStock("005930"));


        return "test";
    }

}
