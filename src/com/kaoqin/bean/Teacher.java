package com.kaoqin.bean;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

/**
 * ¿œ ¶±Ì
 * @author 15630
 *
 */
public class Teacher {
	@Id
	@Column(name="tea_id")
	@GeneratedValue(generator="tea")
	@GenericGenerator(name="tea",strategy="assigned")
	private String id;
	@Column(name="tea_name")
	private String name;
	@Column(name="tea_sex")
	private String sex;
	@Column(name="tea_pwd")
	private String pwd;
	@Column(name="tea_type")
	private String type;
	@Column(name="tea_time")
	private String time;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
}
