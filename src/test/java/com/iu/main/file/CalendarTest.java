package com.iu.main.file;

import static org.junit.Assert.*;

import java.util.Calendar;

import org.junit.Test;

import com.iu.main.Mytest;

public class CalendarTest extends Mytest {

	@Test
	public void test() {
		// 1.Random
		Calendar ca = Calendar.getInstance();
		System.out.println(ca);
		System.out.println(ca.getTime());

		System.err.println(ca.get(Calendar.YEAR));

		System.out.println(ca.get(Calendar.DATE));
		System.out.println(ca.get(Calendar.MONTH));
		System.out.println(ca.get(Calendar.THURSDAY));
		ca.set(Calendar.YEAR, 1995);
		System.out.println(ca.getTime());

		System.out.println("=================================");

		ca = Calendar.getInstance();
		Calendar ca2 = Calendar.getInstance();
		ca2.set(2023, 6, 27, 18, 20);
		long in = ca.getTimeInMillis();
		long out = ca2.getTimeInMillis();
		long result = (out - in);
		System.out.println(result/1000*60);
	}

}
