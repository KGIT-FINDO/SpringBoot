package com.example.findo274.controller;

import com.example.findo274.VO.MemberVO;
import com.example.findo274.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

@Controller
public class MemberController {
    @Autowired
    MemberService memberService;
    @GetMapping("/signin")
    public String Login(){
        return "signin";
    }
    @RequestMapping("/signin_ok")
    public ModelAndView signin_ok(MemberVO mvo, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception{
        response.setContentType("text/html;Charset=UTF-8");
        PrintWriter out= response.getWriter();

        MemberVO member_pwd = this.memberService.memberLogin(mvo.getId());//회원 아이디를 기준으로 회원정보를 DB로부터 가져옴

        if(member_pwd == null){
            out.println("<script>");
            out.println("alert('관리자 정보가 없습니다');");
            out.println("history.go(-1);");
            out.println("</script>");
        }else{
            if(!member_pwd.getPassword().equals(mvo.getPassword())){
                out.println("<script>");
                out.println("alert('관리자 비번이 다릅니다!')");
                out.println("history.back();");
                out.println("</script>");
            }else{
                session.setAttribute("id", mvo.getId());
                session.setAttribute("name", member_pwd.getName());

                return new ModelAndView("redirect:/");
            }

        }
        return null;
    }

    @GetMapping("/signupAgreement")
    public String SignupAgreement(){
        return "signup_agreement";
    }

    @GetMapping("/signup")
    public String Signup(Model m){
        return "signup";
    }

    @PostMapping("/signupComplete")
    public String SignupComplete(MemberVO m){
        this.memberService.insertMember(m);

        
        return "signup_complete";
    }
}
