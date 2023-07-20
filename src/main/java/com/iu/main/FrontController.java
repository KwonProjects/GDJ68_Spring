package com.iu.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.iu.main.di.Robot;

@Controller
public class FrontController {

	@Autowired 
	private Robot robot;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String Home() {
		System.out.println("Home");
		robot.getHead().name();
		robot.getArm().punch();
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
