package com.kaoqin.action;

import org.apache.struts2.ServletActionContext;

import com.kaoqin.bean.Users;
import com.kaoqin.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private Users user;
	private Users u=new Users();
	
	private LoginService<Users> login;

	@Override
	public String execute() throws Exception {
		System.out.println(user);
		boolean b = login.login("from Users where id=?1 and pwd=?2 and type=?3", user);
		System.out.println(b);
		if (b) {
			user.setPwd(null);
			ServletActionContext.getRequest().getSession().setAttribute("admin", user);
			return SUCCESS;
		} else {
			System.out.println(user);
			System.out.println(user.getId());
			addFieldError("user.id", user.getId());
			addFieldError("pwd", "用户名或密码错误"); 
			return INPUT;
		}
	}

	@Override
	public void validate() {
		// TODO Auto-generated method stub
		super.validate();
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public LoginService<Users> getLogin() {
		return login;
	}

	public void setLogin(LoginService<Users> login) {
		this.login = login;
	}

}
