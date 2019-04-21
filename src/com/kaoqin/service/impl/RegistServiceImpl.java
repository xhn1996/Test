package com.kaoqin.service.impl;

import java.sql.SQLException;

import com.kaoqin.dao.BaseDao;
import com.kaoqin.service.RegistService;

public class RegistServiceImpl<T> implements RegistService<T> {
	private BaseDao<T> baseDao;

	@Override
	public boolean regist(T t) {
		try {
			baseDao.add(t);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			return false;
		}
		return true;
	}

	public BaseDao getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao baseDao) {
		this.baseDao = baseDao;
	}

}
