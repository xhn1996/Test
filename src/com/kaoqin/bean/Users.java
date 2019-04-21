package com.kaoqin.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="users")
public class Users {
	@Id
	@Column(name="use_id")
	@GeneratedValue(generator="user")
	@GenericGenerator(name="user",strategy="assigned")
	private String id;
	@Column(name="use_pwd")
	private String pwd;
	@Column(name="use_type")
	private String type;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
		return "User [id=" + id + ", pwd=" + pwd + ", type=" + type + "]";
	}
	
}
