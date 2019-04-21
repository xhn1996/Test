package com.kaoqin.action;


import java.util.Date;
import java.util.Properties;
import java.util.Timer;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.kaoqin.bean.MyMessage;
import com.kaoqin.utils.MyTimerTask;
import com.opensymphony.xwork2.ActionSupport;

public class AuthCodeAction extends ActionSupport {
	private String email;

	private MyMessage message = new MyMessage();

	@Override
	public String execute() throws Exception {
		int random = (int) (Math.random() * 89999 + 100000);
		HttpSession s = ServletActionContext.getRequest().getSession();
		s.setAttribute(email, random);
		System.out.println(email);
		new Timer().schedule(new MyTimerTask(email, s), 1000 * 60 * 2);
		// 设置邮件主体

		String[] ee = email.split("@");
		message.setTo("1563089506@qq.com");
		message.setTitle("课堂小助手官网");
		message.setContext("<!DOCTYPE html>\r\n" + "<html>\r\n" + "<head>\r\n" + "<title></title>\r\n"
				+ "<meta charset=\"utf-8\" />\r\n" + "<body>\r\n" + "<h3>尊敬的<span style=\"color:red;\">" + ee[0]
				+ "</span>，你好！</h3>\r\n" + "<br>\r\n" + "<p>\r\n" + "	感谢你对课堂小助手的支持。<br>\r\n"
				+ "	你正在进行邮箱认证，请在验证码框输入本次验证码:<a href=\"#\">" + random + "</a>,以完成验证。<br><br>	\r\n"
				+ "注:此验证码有效期为2分钟，过期未验证将失效。如非本人操作，请忽略此邮件，由此给你带来的不便请谅解！<br>" + "如有疑问，请登录KORNBLUME官网" + "</p>\r\n" + "\r\n"
				+ "</body>\r\n" + "</html>");
		// 连接服务器的参数配置
		Properties properties = new Properties();
		properties.setProperty("mail.smtp.auth", "true");// 设置用户认证方式
		properties.setProperty("mail.transport.protocol", "smtp");// 设置传输协议
		properties.setProperty("mail.host", "smtp.qq.com");// 设置发件人的SMTP服务器地址
		// 2、创建定义整个应用程序所需的环境信息的 Session 对象
		Session session = Session.getInstance(properties);
		// 设置调试信息在控制台打印出来
		session.setDebug(false);
		// 3、创建邮件的实例对象
		MimeMessage msg = new MimeMessage(session);
		// 设置发件人地址
		try {
			msg.setFrom(new InternetAddress(MyMessage.FROM, "验证码"));
			/**
			 * 设置收件人地址（可以增加多个收件人、抄送、密送），即下面这一行代码书写多行 MimeMessage.RecipientType.TO:发送
			 * MimeMessage.RecipientType.CC：抄送 MimeMessage.RecipientType.BCC：密送
			 */
			msg.addRecipient(MimeMessage.RecipientType.BCC, new InternetAddress(email));
			// 设置邮件主题
			msg.setSubject(message.getTitle(), "UTF-8");
			// 设置邮件内容
			msg.setContent(message.getContext(), "text/html;charset=UTF-8");
			// 设置邮件的发送时间,默认立即发送
			msg.setSentDate(new Date());
			// 4、根据session对象获取邮件传输对象Transport
			Transport transport = session.getTransport();
			// 设置发件人的账户名和密码
			transport.connect(MyMessage.FROM, MyMessage.PWD);
			// 发送邮件，并发送到所有收件人地址，message.getAllRecipients() 获取到的是在创建邮件对象时添加的所有收件人, 抄送人, 密送人
			transport.sendMessage(msg, msg.getAllRecipients());

			// 如果只想发送给指定的人，可以如下写法
			// transport.sendMessage(msg, new Address[]{new
			// InternetAddress("2710286719@qq.com")});
			System.out.println("发送完毕");
			// 5、关闭邮件连接
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
			/*
			 * ServletActionContext.getRequest().setAttribute("email", email);
			 * ServletActionContext.getRequest().setAttribute("error1", "该邮箱不存在"); return
			 * ERROR;
			 */
			myValidate();

		}
		return NONE;
	}

	public void myValidate() {
		System.out.println("发送失败");
		super.addFieldError("email", "该邮箱地址不存在");
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public MyMessage getMessage() {
		return message;
	}

	public void setMessage(MyMessage message) {
		this.message = message;
	}

}
