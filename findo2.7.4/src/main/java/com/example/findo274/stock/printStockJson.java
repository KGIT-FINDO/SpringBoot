package com.example.findo274.stock;

import org.json.simple.parser.ParseException;

import java.io.IOException;

public class printStockJson {
    public static void main(String[] args) throws ParseException, IOException {
        StockInfo stockInfo = new StockInfo();
        stockInfo.getStock("005930");
    }
}
