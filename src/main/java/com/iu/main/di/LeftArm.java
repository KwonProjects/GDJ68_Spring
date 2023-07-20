package com.iu.main.di;

import org.springframework.stereotype.Component;

@Component
public class LeftArm implements Arm{

	@Override
	public void punch() {
		
	System.out.println("왼쪽 펀치");	
	}
	
	

}
