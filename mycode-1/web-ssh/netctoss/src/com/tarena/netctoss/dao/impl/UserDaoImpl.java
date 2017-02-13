package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IUserDao;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public class UserDaoImpl extends HibernateDaoSupport implements IUserDao {

	@Override
	public User findUserByName(final User user) {
		
		return (User) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from User where accountName=:accountName";
						Query query = session.createQuery(hql);
						query.setParameter("accountName", user.getAccountName());
						User foundUser = (User) query.uniqueResult();
						return foundUser;
					}
				});
	}

	@Override
	public User findUserById(final User user) {
		return (User) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from User where userId=:userId";
						Query query = session.createQuery(hql);
						query.setParameter("userId", user.getUserId());
						return query.uniqueResult();
					}
				});
	}

	@Override
	public int updateUserInfo(User user) {
		String hql = "update User set realName=?,accountStatus=?,password=?,accountName=?,userPhone=?,userEmail=?,paymentType=?,career=?,nationnality=?,gender=?,company=?,zipCode=?"
				+ "where userId=?";
		return this.getHibernateTemplate()
				.bulkUpdate(
						hql,
						new Object[] { user.getRealName(),
								user.getAccountStatus(), user.getPassword(),
								user.getAccountName(), user.getUserPhone(),
								user.getUserEmail(), user.getPaymentType(),
								user.getCareer(), user.getNationnality(),
								user.getGender(), user.getCompany(),
								user.getZipCode(), user.getUserId() });
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> listUsers(final User user, final Page page) {
		return (List<User>) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from User where 1=1 and accountStatus!=0 ";
						if (user != null) {
							if (user.getAccountName() != null
									&& !"".equals(user.getAccountName())) {
								hql += " and accountName like '%"
										+ user.getAccountName().trim() + "%'";
							}
							if (user.getRealName() != null
									&& !"".equals(user.getRealName())) {
								hql += " and realName like '%"
										+ user.getRealName().trim() + "%'";
							}
							if (user.getAccountStatus() == 1
									|| user.getAccountStatus() == 2) {
								hql += " and accountStatus ="
										+ user.getAccountStatus() + "";
							}
						}
						Query query = session.createQuery(hql);
						if (page != null) {
							query.setFirstResult(page.getBegin());
							query.setMaxResults(page.getPageSize());
						}
						query.setCacheable(true);

						return query.list();
					}
				});
	}

	@Override
	public int addUser(User user) {

		return (Integer) this.getHibernateTemplate().save(user);
	}

	@Override
	public int updateUserStatus(User user) {
		String hql = "update User set accountStatus=? where userId=?";

		return this.getHibernateTemplate().bulkUpdate(hql,
				new Object[] { user.getAccountStatus(), user.getUserId() });
	}

	@Override
	public long countRow(final User user) {
		return (Long) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from User where  accountStatus!=0  ";
						if (user != null) {
							if (user.getAccountName() != null
									&& !"".equals(user.getAccountName())) {
								hql += " and accountName like '%"
										+ user.getAccountName().trim() + "%'";
							}
							if (user.getRealName() != null
									&& !"".equals(user.getRealName())) {
								hql += " and realName like '%"
										+ user.getRealName().trim() + "%'";
							}
							if (user.getAccountStatus() == 1
									|| user.getAccountStatus() == 2) {
								hql += " and accountStatus ="
										+ user.getAccountStatus() + "";
							}
						}

						Query query = session.createQuery(hql);
						return (Long) query.uniqueResult();
					}
				});

	}

	@Override
	public int updateUserPassword(final User user) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "UPDATE User SET password=:password WHERE userId=:userId";
						Query query = session.createQuery(hql);
						query.setParameter("password", user.getPassword());
						query.setParameter("userId", user.getUserId());

						return query.executeUpdate();
					}
				});
	}

	@Override
	public int updateSelfInfo(User user) {
		String hql = "update User set realName=?,userPhone=?,userEmail=?,paymentType=?,career=?,nationnality=?,gender=?,company=?,zipCode=?"
				+ "where userId=?";
		return this.getHibernateTemplate().bulkUpdate(
				hql,
				new Object[] { user.getRealName(), user.getUserPhone(),
						user.getUserEmail(), user.getPaymentType(),
						user.getCareer(), user.getNationnality(),
						user.getGender(), user.getCompany(), user.getZipCode(),
						user.getUserId() });
	}

}
