package com.iu.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FrontController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home() {
		System.out.println("Home");
		return "index";
	}

	// home
	// 주소가 왓을떄 실행 , index.jsp
}
