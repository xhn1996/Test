package com.kaoqin.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

public interface BaseDao<T> {
	/**
	 * ͨ��id��ѯ
	 * @param clazz
	 * @param id
	 * @return
	 */
	public T getEntity(Class<T> clazz, Serializable id) throws SQLException;
	/**
	 * ͨ��hql��ѯ
	 * @param hql
	 * @param objects
	 * @return
	 * @throws SQLException
	 */
	public List<T> getEntityHQL(String hql,Object...objects) throws SQLException;
	/**
	 * �������
	 * @param t
	 * @throws SQLException
	 */
	public Serializable add(T t) throws SQLException;
	/**
	 * ��������
	 * @param t
	 * @throws SQLException
	 */
	public void update(T t) throws SQLException;
	/**
	 * ɾ������
	 * @param t
	 * @throws SQLException
	 */
	public void delete(T t) throws SQLException;
	/**
	 * ��ҳ��ѯ
	 * @param hql
	 * @param startPage
	 * @param maxPage
	 * @return
	 * @throws SQLException
	 */
	public List<T> page(String hql,int startPage,int maxPage) throws SQLException;
	/**
	 * ͨ��sql��ѯ
	 * @param sql
	 * @param objects
	 * @return
	 * @throws SQLException
	 */
	public List<T> getEntitySQl(String sql,Object...objects) throws SQLException;
	
}
