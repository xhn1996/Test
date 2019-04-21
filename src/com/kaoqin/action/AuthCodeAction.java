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
		// �����ʼ�����

		String[] ee = email.split("@");
		message.setTo("1563089506@qq.com");
		message.setTitle("����С���ֹ���");
		message.setContext("<!DOCTYPE html>\r\n" + "<html>\r\n" + "<head>\r\n" + "<title></title>\r\n"
				+ "<meta charset=\"utf-8\" />\r\n" + "<body>\r\n" + "<h3>�𾴵�<span style=\"color:red;\">" + ee[0]
				+ "</span>����ã�</h3>\r\n" + "<br>\r\n" + "<p>\r\n" + "	��л��Կ���С���ֵ�֧�֡�<br>\r\n"
				+ "	�����ڽ���������֤��������֤������뱾����֤��:<a href=\"#\">" + random + "</a>,�������֤��<br><br>	\r\n"
				+ "ע:����֤����Ч��Ϊ2���ӣ�����δ��֤��ʧЧ����Ǳ��˲���������Դ��ʼ����ɴ˸�������Ĳ������½⣡<br>" + "�������ʣ����¼KORNBLUME����" + "</p>\r\n" + "\r\n"
				+ "</body>\r\n" + "</html>");
		// ���ӷ������Ĳ�������
		Properties properties = new Properties();
		properties.setProperty("mail.smtp.auth", "true");// �����û���֤��ʽ
		properties.setProperty("mail.transport.protocol", "smtp");// ���ô���Э��
		properties.setProperty("mail.host", "smtp.qq.com");// ���÷����˵�SMTP��������ַ
		// 2��������������Ӧ�ó�������Ļ�����Ϣ�� Session ����
		Session session = Session.getInstance(properties);
		// ���õ�����Ϣ�ڿ���̨��ӡ����
		session.setDebug(false);
		// 3�������ʼ���ʵ������
		MimeMessage msg = new MimeMessage(session);
		// ���÷����˵�ַ
		try {
			msg.setFrom(new InternetAddress(MyMessage.FROM, "��֤��"));
			/**
			 * �����ռ��˵�ַ���������Ӷ���ռ��ˡ����͡����ͣ�����������һ�д�����д���� MimeMessage.RecipientType.TO:����
			 * MimeMessage.RecipientType.CC������ MimeMessage.RecipientType.BCC������
			 */
			msg.addRecipient(MimeMessage.RecipientType.BCC, new InternetAddress(email));
			// �����ʼ�����
			msg.setSubject(message.getTitle(), "UTF-8");
			// �����ʼ�����
			msg.setContent(message.getContext(), "text/html;charset=UTF-8");
			// �����ʼ��ķ���ʱ��,Ĭ����������
			msg.setSentDate(new Date());
			// 4������session�����ȡ�ʼ��������Transport
			Transport transport = session.getTransport();
			// ���÷����˵��˻���������
			transport.connect(MyMessage.FROM, MyMessage.PWD);
			// �����ʼ��������͵������ռ��˵�ַ��message.getAllRecipients() ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���, ������, ������
			transport.sendMessage(msg, msg.getAllRecipients());

			// ���ֻ�뷢�͸�ָ�����ˣ���������д��
			// transport.sendMessage(msg, new Address[]{new
			// InternetAddress("2710286719@qq.com")});
			System.out.println("�������");
			// 5���ر��ʼ�����
			transport.close();
		} catch (Exception e) {
			e.printStackTrace();
			/*
			 * ServletActionContext.getRequest().setAttribute("email", email);
			 * ServletActionContext.getRequest().setAttribute("error1", "�����䲻����"); return
			 * ERROR;
			 */
			myValidate();

		}
		return NONE;
	}

	public void myValidate() {
		System.out.println("����ʧ��");
		super.addFieldError("email", "�������ַ������");
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
