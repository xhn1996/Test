package com.kaoqin.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.kaoqin.bean.Users;
import com.kaoqin.dao.BaseDao;
import com.kaoqin.service.LoginService;

public class LoginServiceImpl<T> implements LoginService<T> {

	private BaseDao<Users> baseDao;

	@Override
	public boolean login(String hql, Users user) {
		try {
			List<Users> entity = baseDao.getEntityHQL(hql, user.getId(), user.getPwd(), user.getType());
			if (!entity.isEmpty()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}

	}

	public BaseDao<Users> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<Users> baseDao) {
		this.baseDao = baseDao;
	}

}
