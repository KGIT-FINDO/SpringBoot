package com.example.findo274.VO;

import lombok.Data;

@Data
public class SearchVO {
    private String stockname;
    private String stocknumber;

    //검색기능
    private String find_name;
    private String find_number;
}
