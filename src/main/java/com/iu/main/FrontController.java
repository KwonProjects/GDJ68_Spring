package com.iu.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class FrontController {

	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home() {

		return "index";
	}

	
//	
//	public FrontController() {
//	
//	}
//
//	
//	@Autowired
//	public FrontController(Robot robot) {
//		this.robot = robot;
//	}
//
//
//	
//	public Robot getRobot() {
//		return robot;
//	}
//
//	@Autowired
//	public void setRobot(Robot robot) {
//		this.robot = robot;
//	}
//	
	

}
