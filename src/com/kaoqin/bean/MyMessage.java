package com.kaoqin.bean;

public class MyMessage {
	// 发件人地址
	public static final String FROM = "zhuimeng.1314@foxmail.com";
	// 收件人地址
	private String to;
	// 发件人密码
	public static final String PWD = "aqcsotzizptxbagb";
	// 发件人昵称
	private String name;
	// 邮件主题
	private String title;
	// 邮件内容
	private String context;

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

}
