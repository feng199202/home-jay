package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IUserServiceDao;
import com.tarena.netctoss.entity.UserService;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.UserServiceBean;

public class UserServiceImpl extends HibernateDaoSupport implements
		IUserServiceDao {

	@SuppressWarnings("unchecked")
	public List<UserService> listUserService(
			final UserServiceBean userserviceBean, final Page page) {
		page.setCountRow((int) this.countRow(userserviceBean));
		return (List<UserService>) this.getHibernateTemplate().executeFind(
				new HibernateCallback() {
					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "from UserService where 1=1";
						if (userserviceBean != null) {

							if (userserviceBean.getAccountName() != null
									&& !"".equals(userserviceBean
											.getAccountName())) {
								hql += " and user.accountName like '%"
										+ userserviceBean.getAccountName()
												.trim() + "%'";
							}

							if (userserviceBean.getServiceId() > 0) {
								hql += " and serviceId ="
										+ userserviceBean.getServiceId() + "";
							}
							if (userserviceBean.getLabIp() != null
									&& !"".equals(userserviceBean.getLabIp())) {
								hql += " and labIp like '%"
										+ userserviceBean.getLabIp().trim()
										+ "%'";
							}
							if (userserviceBean.getServiceStatus() == 1
									|| userserviceBean.getServiceStatus() == 2) {
								hql += " and serviceStatus ="
										+ userserviceBean.getServiceStatus()
										+ "";
							}
						}
						Query query = session.createQuery(hql);
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						query.setCacheable(true);
						return query.list();
					}
				});
	}

	public long countRow(final UserServiceBean userserviceBean) {
		return (Long) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "select count(*) from UserService where 1=1";
						if (userserviceBean != null) {

							if (userserviceBean.getAccountName() != null
									&& !"".equals(userserviceBean
											.getAccountName())) {
								hql += " and user.accountName like '%"
										+ userserviceBean.getAccountName()
												.trim() + "%'";
							}

							if (userserviceBean.getServiceId() >= 0) {
								hql += " and serviceId ="
										+ userserviceBean.getServiceId() + "";
							}
							if (userserviceBean.getLabIp() != null
									&& !"".equals(userserviceBean.getLabIp())) {
								hql += " and labIp like '%"
										+ userserviceBean.getLabIp().trim()
										+ "%'";
							}
							if (userserviceBean.getServiceStatus() == 1
									|| userserviceBean.getServiceStatus() == 2) {
								hql += " and serviceStatus ="
										+ userserviceBean.getServiceStatus()
										+ "";
							}
						}
						Query query = session.createQuery(hql);

						query.setCacheable(true);
						return query.uniqueResult();
					}
				});
	}

	@Override
	public int addUserService(UserService userService) {
		return (Integer) this.getHibernateTemplate().save(userService);
	}

	@Override
	public int updateUserServiceById(UserService userService) {
		String hql = "loginName=?,loginPassword=?, labIp=?,serviceStatus =?,pricing=? where serviceId=?";

		return this.getHibernateTemplate().bulkUpdate(
				hql,
				new Object[] { userService.getLoginName(),
						userService.getLoginPassword(), userService.getLabIp(),
						userService.getServiceStatus(),
						userService.getPricing(), userService.getServiceId() });
	}

	@Override
	public int deleteUserServidebyId(UserService userService) {
		String hql = "delete UserService  where serviceId=?";

		return this.getHibernateTemplate().bulkUpdate(hql,
				new Object[] { userService.getServiceId() });
	}

	@SuppressWarnings("unchecked")
	@Override
	public UserService findUserServiceById(final int userServiceId) {
		String hql = "from UserService  where serviceId=?";
		List<UserService> userServices = this.getHibernateTemplate().find(hql,
				userServiceId);
		if (userServices != null)
			return userServices.get(0);
		return null;

	}

}
