package com.kaoqin.action;

import java.util.regex.Pattern;

import com.kaoqin.bean.Student;
import com.kaoqin.service.RegistService;
import com.opensymphony.xwork2.ActionSupport;

public class RegistAction extends ActionSupport {
	private RegistService<Student> service;
	private Student stu;
	private String yzm;

	@Override
	public String execute() throws Exception {
		System.out.println(stu + "----" + yzm);
		return null;
	}

	
	public void validateName() {
		if (stu.getName() == "") {
			System.out.println("cw");
			super.addFieldError("stu.name", "用户名不能为空");
		} else if (stu.getName().length() > 6) {
			super.addFieldError("stu.name", "用户名长度为6");
		} else if (Pattern.matches("^[\\u4e00-\\u9fa5]+$", stu.getName())) {
			try {
				execute();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			super.addFieldError("stu.name", "用户名必须中文");
		}
	}

	public RegistService<Student> getService() {
		return service;
	}

	public void setService(RegistService<Student> service) {
		this.service = service;
	}

	public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public String getYzm() {
		return yzm;
	}

	public void setYzm(String yzm) {
		this.yzm = yzm;
	}
}
