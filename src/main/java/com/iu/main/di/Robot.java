package com.iu.main.di;

public class Robot {

	private String name;

	private Arm arm;

	public Robot() {
		this.arm = new Arm();
		// ���յ��� ����
	}

	public Robot(Arm arm) {
		this.arm = arm;
		// ���յ��� ����(���ϴ�)
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Arm getArm() {
		return arm;
	}

	public void setArm(Arm arm) {
		this.arm = arm;
	}

}
