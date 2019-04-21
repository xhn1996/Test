package com.kaoqin.utils;

import java.util.TimerTask;

import javax.servlet.http.HttpSession;

public class MyTimerTask extends TimerTask {
	private HttpSession session;
	private String email;

	public MyTimerTask(String email, HttpSession session) {
		this.email = email;
		this.session = session;
	}

	@Override
	public void run() {
		System.out.println("±»Çå³ý");
		session.setAttribute(email, null);
	}

}
