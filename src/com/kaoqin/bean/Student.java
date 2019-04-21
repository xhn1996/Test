package com.kaoqin.bean;

/**
 * Ñ§Éú±í
 * @author 15630
 *
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


@Entity
@Table(name="student")
public class Student {
	@Id
	@Column(name="stu_id")
	@GeneratedValue(generator="stu")
	@GenericGenerator(name="stu",strategy="assigned")
	private String id;
	@Column(name="stu_name")
	private String name;
	@Column(name="stu_sex")
	private String sex;
	@Column(name="stu_pwd")
	private String pwd;
	@Column(name="stu_type")
	private String type;
	@Column(name="stu_time")
	private String time;
	
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
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
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", sex=" + sex + ", pwd=" + pwd + ", type=" + type + ", time="
				+ time + "]";
	}
	
}
