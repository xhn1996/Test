package com.kaoqin.service;

import com.kaoqin.bean.Users;

public interface LoginService<T> {
	public boolean login(String hql,Users user);
}
