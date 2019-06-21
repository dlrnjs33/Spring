package kr.co.brand.member;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.brand.vo.MemberVO;
import kr.co.brand.vo.TermsVO;

@Controller
public class MemberController {
	
	@Inject
	private MemberService service;
	
	@RequestMapping("/member/login.do")
	public String login() {
		return "/member/login";
	}
	
	@ResponseBody
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public MemberVO login(MemberVO vo, HttpSession session) {
		MemberVO member = service.login(vo);
		session.setAttribute("member", member);
		
		return member;
	}
	
	@RequestMapping("/member/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@RequestMapping("/member/terms.do")
	public String terms(Model model) {
		TermsVO tvo = service.terms();
		model.addAttribute("tvo", tvo);
		return "/member/terms";
	}
	
	@RequestMapping("/member/register.do")
	public String register() {
		return "/member/register";
	}
	
	@RequestMapping(value="/member/register.do", method=RequestMethod.POST)
	public String register(MemberVO vo, HttpServletRequest req) {
		vo.setBm_ip(req.getRemoteAddr());
		service.register(vo);
		
		return "redirect:/";
	}
	
	@RequestMapping("/member/mypage.do")
	public String mypage() {
		return "/member/mypage";
	}
	
}
