package com.example.findo274.VO;

import lombok.Data;

@Data
public class BoardVO {
    private int board_no;
    private String board_name;
    private String board_title;
    private String board_cont;
    private int board_hit;
    private String board_date;

    //페이징(쪽나누기) 관련 변수
    private int startrow;//시작행 번호
    private int endrow;//끝행 번호

    //검색기능
    private String find_name;//검색어
    private String find_field;//검색필드

}
