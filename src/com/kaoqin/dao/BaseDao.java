package com.kaoqin.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

public interface BaseDao<T> {
	/**
	 * 通过id查询
	 * @param clazz
	 * @param id
	 * @return
	 */
	public T getEntity(Class<T> clazz, Serializable id) throws SQLException;
	/**
	 * 通过hql查询
	 * @param hql
	 * @param objects
	 * @return
	 * @throws SQLException
	 */
	public List<T> getEntityHQL(String hql,Object...objects) throws SQLException;
	/**
	 * 添加数据
	 * @param t
	 * @throws SQLException
	 */
	public Serializable add(T t) throws SQLException;
	/**
	 * 更新数据
	 * @param t
	 * @throws SQLException
	 */
	public void update(T t) throws SQLException;
	/**
	 * 删除数据
	 * @param t
	 * @throws SQLException
	 */
	public void delete(T t) throws SQLException;
	/**
	 * 分页查询
	 * @param hql
	 * @param startPage
	 * @param maxPage
	 * @return
	 * @throws SQLException
	 */
	public List<T> page(String hql,int startPage,int maxPage) throws SQLException;
	/**
	 * 通过sql查询
	 * @param sql
	 * @param objects
	 * @return
	 * @throws SQLException
	 */
	public List<T> getEntitySQl(String sql,Object...objects) throws SQLException;
	
}
