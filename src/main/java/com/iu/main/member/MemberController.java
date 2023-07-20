package com.iu.main.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/member/*")
public class MemberController {

	
	@RequestMapping(value = "join",method = RequestMethod.GET )
	public String join() {
		
		return "member/join";
	}
	
	@RequestMapping(value = "login" ,method = RequestMethod.GET)
	public String login() {
		
		return "member/login";
	}
	
	@RequestMapping(value = "logout" ,method = RequestMethod.GET)
	public String logout() {
		
		return "/index";
	}
	
	@RequestMapping(value = "mypage" ,method = RequestMethod.GET)
	public String mypage() {
		
		return "member/mypage";
	}
	
	
}
