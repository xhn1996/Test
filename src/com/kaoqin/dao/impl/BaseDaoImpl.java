package com.kaoqin.dao.impl;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.NativeQuery;
import org.hibernate.query.Query;

import com.kaoqin.dao.BaseDao;

public class BaseDaoImpl<T> implements BaseDao<T> {
	private SessionFactory sessionFactory;

	@Override
	public T getEntity(Class<T> clazz, Serializable id) throws SQLException {
		return sessionFactory.getCurrentSession().get(clazz, id);
	}

	@Override
	public List<T> getEntityHQL(String hql, Object... objects) throws SQLException {
		Query q = sessionFactory.getCurrentSession().createQuery(hql);
		for (int i = 0; i < objects.length; i++) {
			q.setParameter(i+1, objects[i]);
		}
		return q.list();
	}

	@Override
	public Serializable add(T t) throws SQLException {

		return sessionFactory.getCurrentSession().save(t);

	}

	@Override
	public void update(T t) throws SQLException {
		sessionFactory.getCurrentSession().saveOrUpdate(t);

	}

	@Override
	public void delete(T t) throws SQLException {
		sessionFactory.getCurrentSession().delete(t);

	}

	@Override
	public List<T> page(String hql, int pageIndex, int maxPage) throws SQLException {
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		query.setFirstResult((pageIndex - 1) * maxPage);
		query.setMaxResults(maxPage);
		return query.list();

	}

	@Override
	public List<T> getEntitySQl(String sql, Object... objects) throws SQLException {
		NativeQuery query = sessionFactory.getCurrentSession().createSQLQuery(sql);
		for (int i = 0; i < objects.length; i++) {
			query.setParameter(i+1, objects[i]);
		}
		return query.list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	

}
