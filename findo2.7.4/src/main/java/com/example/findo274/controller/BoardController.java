package com.example.findo274.controller;

import com.example.findo274.VO.BoardVO;
import com.example.findo274.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class BoardController {
    @Autowired
    BoardService boardService;



    @GetMapping("/community")
    public String community(Model listM, BoardVO b, HttpSession session, HttpServletRequest request, HttpServletResponse response){
        int page=1;
        int limit=10;//한페이지에 보여지는 목록개수
        if(request.getParameter("page") != null) {
            page=Integer.parseInt(request.getParameter("page"));
        }
        String find_name=request.getParameter("find_name");
        String find_field=request.getParameter("find_field");
        b.setFind_field(find_field);
        b.setFind_name("%"+find_name+"%");
        // SQL문에서 %는검색에서 하나이상의 임의의 문자와 매핑 대응하는
        //와일드 카드문자

        int totalCount=this.boardService.getRowCount(b);
        //총레코드 개수,검색후 레코드 개수

        b.setStartrow((page-1)*10+1);//시작행번호
        b.setEndrow(b.getStartrow()+limit-1);//끝행 번호

        List<BoardVO> blist=this.boardService.getBoardList(b);
        //목록

        //총 페이지수
        int maxpage=(int)((double)totalCount/limit+0.95);
        //시작페이지(1,11,21 ..)
        int startpage=(((int)((double)page/10+0.9))-1)*10+1;
        //현재 페이지에 보여질 마지막 페이지(10,20 ..)
        int endpage=maxpage;
        if(endpage>startpage+10-1) endpage=startpage+10-1;

        listM.addAttribute("blist",blist);
        listM.addAttribute("page",page);
        listM.addAttribute("startpage",startpage);
        listM.addAttribute("endpage",endpage);
        listM.addAttribute("maxpage",maxpage);
        listM.addAttribute("listcount",totalCount);
        listM.addAttribute("find_field",find_field);
        listM.addAttribute("find_name",find_name);

        return "index_community";
    }

    @GetMapping("board_write")
    public String board_write(HttpSession session, HttpServletRequest request, HttpServletResponse response) throws Exception{
        response.setContentType("text/html;Charset=UTF-8");
        PrintWriter out= response.getWriter();
        String id = (String) request.getAttribute("id");

        if(id != null){
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
        }else{
            return "index_BoardWrite";
        }
        return null;
    }


    @PostMapping("board_write_ok")
    public ModelAndView board_write_ok(BoardVO bvo, HttpSession session, HttpServletResponse response, HttpServletRequest request){
        String id = (String) session.getAttribute("id");
        String title =  request.getParameter("board_title");
        String cont = request.getParameter("board_cont");

        bvo.setBoard_name(id);
        bvo.setBoard_title(title);
        bvo.setBoard_cont(cont);


        this.boardService.insertBoard(bvo);


        return new ModelAndView("redirect:/community");
    }

    @GetMapping("board_cont")
    public ModelAndView board_cont(@RequestParam("board_no") int board_no, String state, int page, BoardVO b, HttpServletResponse response) {
        //@RequestParam("bbs_no")를 서블릿으로 표현하면 request.getParameter("bbs_no")와 같음.
        //int page로 표현해도 get으로 전달된 page 파라미터 값을 받을수 있다.
        response.setContentType("text/html;Charset=UTF-8");
        if(state.equals("cont")) {//내용보기 일때만 조회수 증가
            b=this.boardService.getBoardCont(board_no);

        }else {//답변폼, 수정폼, 삭제폼일때는 조회수 증가 안함.
            b=this.boardService.getBoardCont2(board_no);
        }

        String board_cont = b.getBoard_cont().replace("\n", "<br/>");//textarea내용 입력박스에서 엔터키 친부분을 줄바꿈 처리
        ModelAndView cm = new ModelAndView();
        cm.addObject("b", b);//키 값 쌍으로 저장
        cm.addObject("board_cont", board_cont);
        cm.addObject("page", page);//페이징에서 내가 본 쪽번호를 이동하기 위해서 책갈피 기능 구현을 위한 페이지 번호 저장.
        if(state.equals("cont")) {//내용보기일때
            cm.setViewName("index_BoardCont");//
        } else if(state.equals("edit")){//수정폼
            cm.setViewName("index_board_edit");
        }else if(state.equals("del")){//삭제폼
            cm.setViewName("index_board_del");
        }
        return cm;
    }

    @PostMapping("board_edit_ok")
    public ModelAndView board_edit_ok(HttpServletRequest request, HttpServletResponse response, HttpSession session, BoardVO boardVO) throws Exception{
        PrintWriter out = response.getWriter();
        int board_no = Integer.parseInt(request.getParameter("board_no"));
        int page = 1;
        if(request.getParameter("page") != null){
            page = Integer.parseInt(request.getParameter("page"));
        }

        String title = request.getParameter("board_title");
        String cont = request.getParameter("board_cont");

        boardVO.setBoard_title(title);
        boardVO.setBoard_cont(cont);

        this.boardService.editBoard(boardVO);

        ModelAndView em = new ModelAndView("redirect:/board_cont");
        em.addObject("board_no", board_no);
        em.addObject("page", page);
        em.addObject("state", "cont");

        return em;
    }

    @PostMapping("board_del_ok")
    public String board_del_ok(int board_no, int page,HttpServletResponse response, HttpServletRequest request, BoardVO b, HttpSession session) throws Exception{
        response.setContentType("text/html; charset=UTF-8");

        PrintWriter out = response.getWriter();
        b=this.boardService.getBoardCont2(board_no);

        String board_name = b.getBoard_name();
        String id = (String) session.getAttribute("id");

        if(board_name.equals(id)){
            this.boardService.deleteBoard(board_no);
            return "redirect:/community?page="+page;
        }else if(!board_name.equals(id)){
            out.println("<script>");
            out.println("alert('권한이 없습니다..');");
            out.println("history.go(-1);");
            out.println("</script>");

        }
        else{
            out.println("<script>");
            out.println("alert('로그인이 필요합니다.');");
            out.println("history.go(-1);");
            out.println("</script>");
        }
        return null;

    }

}
