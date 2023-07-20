package com.iu.main.di;

public class Main {
	
	
	
	public static void main(String[] args) {
	
		
		
		Arm arm = new Arm();

		Robot robot = new Robot(arm);
		
		robot.setArm(arm);
		
		robot = null;
	}
}
