package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IRightDao;
import com.tarena.netctoss.entity.Right;
import com.tarena.netctoss.util.Page;

public class RightDaoImpl extends HibernateDaoSupport implements IRightDao {
	/**
	 * 添加right
	 */
	@Override
	public int addRight(Right right) {
		// TODO Auto-generated method stub
		return (Integer) this.getHibernateTemplate().save(right);
	}

	/**
	 * 根据传入right 的rightId 删除数据库中与之匹配的行
	 */
	@Override
	public int deleteRightById(final Right right) {
		// TODO Auto-generated method stub
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "DELETE FROM Right WHERE rightId=:rightId";
						Query query = session.createQuery(hql);
						query.setParameter("rightId", right.getRightId());

						return query.executeUpdate();
					}
				});
	}

	/**
	 * 将传入right 的信息更新到与right.rightId 匹配的数据库行中
	 */
	@Override
	public int updateRightById(final Right right) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "UPDATE Right SET rightName=:rightName,url=:url,systemModule=:systemModule"
								+ " WHERE rightId=:rightId";
						Query query = session.createQuery(hql);
						query.setParameter("rightName", right.getRightName());
						query.setParameter("url", right.getUrl());
						query.setParameter("systemModule",
								right.getSystemModule());
						query.setParameter("rightId", right.getRightId());
						int result = query.executeUpdate();
						return result;
					}
				});
	}

	/**
	 * 以分页形式显示如何要求的right
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<Right> listRights(final Right right, final Page page) {
		// TODO Auto-generated method stub

		return (List<Right>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "FROM Right WHERE 1=1";
						if (right != null) {
							if (right.getRightName() != null)
								hql += " and rightName like:rightName";
							if (right.getSystemModule() != null)
								hql += " and systemModule.systemModuleName like:systemModuleName";
						}
						Query query = session.createQuery(hql);
						if (right != null) {
							if (right.getRightName() != null)
								query.setParameter("rightName",
										"%" + right.getRightName() + "%");
							if (right.getSystemModule() != null)
								query.setParameter("systemModuleName", "%"
										+ right.getSystemModule()
												.getSystemModuleName() + "%");
						}
						if (page != null) {
							query.setFirstResult(page.getBegin());
							query.setMaxResults(page.getPageSize());
						}
						return query.list();
					}
				});
	}

	/**
	 * 计算符合条件的right 的行数
	 */
	@Override
	public long countRows(final Right right) {
		// TODO Auto-generated method stub
		return (Long) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "SELECT COUNT(*) FROM Right WHERE 1=1";
						if (right != null) {
							if (right.getRightName() != null)
								hql += " and rightName like:rightName";
							if (right.getSystemModule() != null)
								hql += " and systemModule.systemModuleName like:systemModuleName";
						}
						Query query = session.createQuery(hql);
						if (right != null) {
							if (right.getRightName() != null)
								query.setParameter("rightName",
										"%" + right.getRightName() + "%");
							if (right.getSystemModule() != null)
								query.setParameter("systemModuleName", "%"
										+ right.getSystemModule()
												.getSystemModuleName() + "%");
						}
						return query.uniqueResult();
					}
				});
	}

	@Override
	public Right findRightById(Right right) {

		String hql = "FROM Right WHERE rightId=?";

		@SuppressWarnings("unchecked")
		List<Right> rights = this.getHibernateTemplate().find(hql,
				right.getRightId());
		if (rights != null)
			return rights.get(0);
		return null;
	}

	@Override
	public Right findRightByName(Right right) {
		// TODO Auto-generated method stub
		String hql = "FROM Right WHERE rightName=?";
		@SuppressWarnings("unchecked")
		List<Right> rights = this.getHibernateTemplate().find(hql,
				right.getRightName());
		if (rights != null)
			return rights.get(0);
		return null;
	}

}
