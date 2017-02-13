package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IAdminDao;
import com.tarena.netctoss.entity.Admin;
import com.tarena.netctoss.util.Page;

public class AdminDaoImpl extends HibernateDaoSupport implements IAdminDao {

	private Log log = LogFactory.getLog(AdminDaoImpl.class);

	@Override
	public Admin findAdminByName(final Admin admin) {

		return (Admin) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "FROM Admin WHERE accountName=:accountName";
						Query query = session.createQuery(hql);
						query.setParameter("accountName",
								admin.getAccountName());
						Admin foundAdmin = (Admin) query.uniqueResult();
						log.info("foundAdmin " + foundAdmin);
						return foundAdmin;
					}
				});
	}

	@Override
	public int addAdmin(Admin admin) {

		return (Integer) this.getHibernateTemplate().save(admin);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> listAdmins(final Admin admin, final Page page,
			final Date beginDate, final Date endDate) {

		return (List<Admin>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "FROM Admin WHERE role.roleId!=1";
						if (admin != null) {
							if (admin.getAccountName() != null)
								hql += " and accountName like:accountName";
							if (admin.getRealName() != null)
								hql += " and realName like:realName";
						}

						if (beginDate != null) {
							hql += " and enrollDate>=:beginDate";
						}

						if (endDate != null) {
							hql += " and enrollDate<=:endDate";
						}
						Query query = session.createQuery(hql);
						if (admin != null) {
							if (admin.getAccountName() != null)
								query.setParameter("accountName",
										"%" + admin.getAccountName() + "%");
							if (admin.getRealName() != null)

								query.setParameter("realName",
										"%" + admin.getRealName() + "%");
						}
						if (beginDate != null) {

							query.setDate("beginDate", beginDate);
						}
						if (endDate != null) {
							// hql += " and enrollDate <= endDate";
							query.setDate("endDate", endDate);
						}
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Admin> admins = query.list();
						return admins;
					}
				});
	}
	@Override
	public int updateAdminInfo(final Admin admin) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "UPDATE Admin SET realName=:realName,accountName=:accountName,"
								+ "adminPhone=:adminPhone,adminEmail=:adminEmail";
						if (admin.getPassword() != null
								&& admin.getRole() != null) {
							hql += ",password=:password,role=:role";
						}
						hql += " WHERE adminId=:adminId";
						Query query = session.createQuery(hql);
						query.setParameter("realName", admin.getRealName());
						query.setParameter("accountName",
								admin.getAccountName());
						query.setParameter("adminPhone", admin.getAdminPhone());
						query.setParameter("adminEmail", admin.getAdminEmail());
						if (admin.getPassword() != null
								&& admin.getRole() != null) {
							query.setParameter("password", admin.getPassword());
							query.setParameter("role", admin.getRole());
						}

						query.setParameter("adminId", admin.getAdminId());
						return query.executeUpdate();
					}
				});
	}
	@Override
	public int deleteAdmin(Admin admin) {
		// TODO Auto-generated method stub
		String hql = "DELETE FROM Admin WHERE adminId=?";
		return (Integer) this.getHibernateTemplate().bulkUpdate(hql,
				admin.getAdminId());
	}

	@Override
	public int updateSelfPassword(Admin admin) {
		String hql = " UPDATE FROM Admin SET password=? WHERE adminId=?";
		return (Integer) this.getHibernateTemplate().bulkUpdate(hql,
				new Object[] { admin.getPassword(), admin.getAdminId() });
	}

	@Override
	public long countRows(final Admin admin, final Date beginDate,
			final Date endDate) {

		return (Long) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "SELECT COUNT(*) FROM Admin WHERE role.roleId!=1";
						if (admin != null) {
							if (admin.getAccountName() != null)
								hql += " and accountName like:accountName";
							if (admin.getRealName() != null)
								hql += " and realName like:realName";
						}

						if (beginDate != null) {
							hql += " and enrollDate>=:beginDate";
						}

						if (endDate != null) {
							hql += " and enrollDate<=:endDate";
						}
						Query query = session.createQuery(hql);
						if (admin != null) {
							if (admin.getAccountName() != null)
								query.setParameter("accountName",
										"%" + admin.getAccountName() + "%");
							if (admin.getRealName() != null)

								query.setParameter("realName",
										"%" + admin.getRealName() + "%");
						}
						if (beginDate != null) {

							query.setDate("beginDate", beginDate);
						}
						if (endDate != null) {
							query.setDate("endDate", endDate);
						}
						long rows = (Long) query.uniqueResult();
						return rows;
					}
				});
	}

	@Override
	public Admin findAdminById(final Admin admin) {
		// TODO Auto-generated method stub
		return (Admin) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "FROM Admin WHERE adminId=:adminId";
						Query query = session.createQuery(hql);
						query.setParameter("adminId", admin.getAdminId());
						
						return query.uniqueResult();
					}
				});
	}

}
