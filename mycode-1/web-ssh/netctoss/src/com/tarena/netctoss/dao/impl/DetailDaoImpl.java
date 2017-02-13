package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IDetailDao;
import com.tarena.netctoss.entity.Detail;
import com.tarena.netctoss.entity.User;
import com.tarena.netctoss.util.Page;

public class DetailDaoImpl extends HibernateDaoSupport implements IDetailDao {

	private Log log = LogFactory.getLog(DetailDaoImpl.class);

	@SuppressWarnings("unchecked")
	public List<Object[]> listReckonsMonthByUserName(final User user,
			final Page page) {
		return (List<Object[]>) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "SELECT year,month,loginName,labIp,Max(monthCurrentFee) "
								+ " from Detail WHERE userName=:userName group by loginName,month,year,labIp";
						Query query = session.createQuery(hql);
						query.setParameter("userName", user.getAccountName());
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Object[]> details = query.list();

						log.info("details.size(): " + details.size());
						return details;
					}
				});

	}

	@SuppressWarnings("unchecked")
	public List<Object[]> listReckonsMonthDeailByUserName(final User user,
			final Page page, final Detail detail) {
		return (List<Object[]>) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "SELECT year,month,loginName,labIp,Max(monthCurrentFee) "
								+ " from Detail WHERE userName=:userName";

						if (detail != null) {
							if (detail.getMonth() != 0) {
								hql += " and month=:month";
							}
							if (detail.getYear() != 0) {
								hql += " and year=:year";
							}

							if (detail.getLoginName() != ""
									&& detail.getLoginName() != null) {
								hql += " and loginName like:loginName";
							}
						}
						hql += " group by loginName,month,year,labIp";
						Query query = session.createQuery(hql);

						query.setParameter("userName", user.getAccountName());

						if (detail != null) {
							if (detail.getMonth() != 0) {
								query.setParameter("month", detail.getMonth());

							}

							if (detail.getYear() != 0) {
								query.setParameter("year", detail.getYear());
							}
							if (detail.getLoginName() != ""
									&& detail.getLoginName() != null) {
								query.setParameter("loginName",
										"%" + detail.getLoginName() + "%");
							}
						}
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Object[]> details = query.list();

						log.info("details.size(): " + details.size());
						return details;

					}
				});

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Detail> listDetails(final User user, final Page page,
			final Detail detail) {

		return (List<Detail>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "FROM Detail WHERE userName=:userName and year=:year and month=:month and loginName=:loginName and labIp=:labIp";
						Query query = session.createQuery(hql);
						query.setParameter("userName", user.getAccountName());
						query.setParameter("year", detail.getYear());
						query.setParameter("loginName", detail.getLoginName());
						query.setParameter("month", detail.getMonth());
						query.setParameter("labIp", detail.getLabIp());

						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());

						List<Detail> details = query.list();
						return details;
					}
				});

	}

	@Override
	public int countReckonsMonthDeailByUserName(final User user,
			final Detail detail) {
		// TODO Auto-generated method stub
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "SELECT year,month,loginName,labIp,Max(monthCurrentFee) "
								+ " from Detail WHERE userName=:userName";
						log.info("鎵撳嚭鐨刣etail.getLoginName:"
								+ detail.getLoginName());

						if (detail.getMonth() != 0) {
							hql += " and month=:month";
						}
						if (detail.getYear() != 0) {
							hql += " and year=:year";
						}

						if (detail.getLoginName() != ""
								&& detail.getLoginName() != null) {
							hql += " and loginName like:loginName";
						}
						hql += " group by loginName,month,year,labIp";
						Query query = session.createQuery(hql);

						query.setParameter("userName", user.getAccountName());

						if (detail.getMonth() != 0) {
							query.setParameter("month", detail.getMonth());

						}

						if (detail.getYear() != 0) {
							query.setParameter("year", detail.getYear());
						}
						if (detail.getLoginName() != ""
								&& detail.getLoginName() != null) {
							query.setParameter("loginName",
									"%" + detail.getLoginName() + "%");
						}

						@SuppressWarnings("unchecked")
						List<Object[]> details = query.list();

						log.info("details.size(): " + details.size());
						return details.size();

					}
				});

	}

	@Override
	public int countReckonsMonthByUserName(final User user) {
		// TODO Auto-generated method stub
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "SELECT year,month,loginName,labIp,Max(monthCurrentFee) "
								+ " from Detail WHERE userName=:userName group by loginName,month,year,labIp";
						Query query = session.createQuery(hql);
						query.setParameter("userName", user.getAccountName());

						@SuppressWarnings("unchecked")
						List<Object[]> details = query.list();

						log.info("details.size(): " + details.size());
						return details.size();
					}
				});
	}

	@Override
	public int countDetails(final User user, final Detail detail) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "FROM Detail WHERE userName=:userName and year=:year and month=:month and loginName=:loginName and labIp=:labIp";
						Query query = session.createQuery(hql);
						query.setParameter("userName", user.getAccountName());
						query.setParameter("year", detail.getYear());
						query.setParameter("loginName", detail.getLoginName());
						query.setParameter("month", detail.getMonth());
						query.setParameter("labIp", detail.getLabIp());

						@SuppressWarnings("unchecked")
						List<Detail> details = query.list();
						return details.size();
					}
				});
	}

	@Override
	public List<Detail> listDetailByUserId(User user, Page page) {
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> listDetailsByUesrNameAndLoginNameMonthly(
			final User user, final Page page, final Detail detail) {
		return (List<Object[]>) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "SELECT userName,loginName, MAX(monthCurrentFee),year,month FROM Detail WHERE 1=1";
						if (user != null && user.getAccountName() != null) {
							hql += " AND userName like:userName";
						}
						if (detail != null) {
							if (detail.getYear() != null
									&& detail.getYear() != 0) {
								hql += " AND year=:year";
							}
							if (detail.getMonth() != null
									&& detail.getMonth() != 0) {
								hql += " AND month=:month";
							}
						}
						hql += " GROUP BY userName,loginName ORDER BY year DESC";

						Query query = session.createQuery(hql);

						if (user != null && user.getAccountName() != null) {
							query.setParameter("userName", "%"
									+ user.getAccountName().trim() + "%");
						}
						if (detail != null) {
							if (detail.getYear() != null
									&& detail.getYear() != 0) {
								query.setParameter("year", detail.getYear());
							}
							if (detail.getMonth() != null
									&& detail.getMonth() != 0) {
								query.setParameter("month", detail.getMonth());
							}
						}
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Object[]> details = query.list();

						return details;
					}
				});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Detail> listDetailsByUserNameAndLoginNameDayly(
			final Detail detail, final Page page) {
		//
		return (List<Detail>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "FROM Detail WHERE userName=:userName and loginName=:loginName and year=:year and month=:month";

						Query query = session.createQuery(hql);

						query.setParameter("userName", detail.getUserName());
						query.setParameter("loginName", detail.getLoginName());
						query.setParameter("year", detail.getYear());
						query.setParameter("month", detail.getMonth());
						query.setFetchSize(page.getBegin());
						query.setMaxResults(page.getPageSize());

						List<Detail> details = query.list();

						return details;
					}
				});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> listDetailByLabIpYearly(final Page page,
			final Detail detail) {
		// TODO Auto-generated method stub
		return (List<Object[]>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "SELECT labIp,year,SUM(duration) from Detail WHERE 1=1";
						if (detail != null) {
							if (detail.getYear() != 0)
								hql += " and year=:year";
						}
						hql += " GROUP By labIp,year ORDER By year DESC";
						Query query = session.createQuery(hql);
						if (detail != null) {
							if (detail.getYear() != 0)
								query.setParameter("year", detail.getYear());
						}
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Object[]> details = query.list();

						return details;
					}
				});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Object[]> listDetailByLabIpMonthly(final Page page,
			final Detail detail) {
		return (List<Object[]>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "SELECT labIp,year,month,SUM(duration) from Detail WHERE 1=1";
						if (detail != null) {
							if (detail.getYear() != 0)
								hql += " and year=:year";
							if (detail.getMonth() != 0)
								hql += " and month=:month";
							if (detail.getLabIp() != null)
								hql += " and labIp=:labIp";

						}
						hql += " GROUP By labIp,year,month ORDER By year DESC";
						Query query = session.createQuery(hql);
						if (detail != null) {
							if (detail.getYear() != 0)
								query.setParameter("year", detail.getYear());
							if (detail.getMonth() != 0)
								query.setParameter("month", detail.getMonth());
							if (detail.getLabIp() != null)
								query.setParameter("labIp", detail.getLabIp());
						}
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Object[]> details = query.list();
						return details;
					}
				});
	}

	@Override
	public int countDetailsByUesrNameAndLoginNameMonthly(final Detail detail,
			final User user) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "SELECT userName,loginName, MAX(monthCurrentFee),year,month FROM Detail WHERE 1=1";
						if (user != null && user.getAccountName() != null) {
							hql += " AND userName like:userName";
						}
						if (detail != null) {
							if (detail.getYear() != null
									&& detail.getYear() != 0) {
								hql += " AND year=:year";
							}
							if (detail.getMonth() != null
									&& detail.getMonth() != 0) {
								hql += " AND month=:month";
							}
						}
						hql += " GROUP BY userName,loginName ORDER BY year DESC";

						Query query = session.createQuery(hql);

						if (user != null && user.getAccountName() != null) {
							query.setParameter("userName", "%"
									+ user.getAccountName().trim() + "%");
						}
						if (detail != null) {
							if (detail.getYear() != null
									&& detail.getYear() != 0) {
								query.setParameter("year", detail.getYear());
							}
							if (detail.getMonth() != null
									&& detail.getMonth() != 0) {
								query.setParameter("month", detail.getMonth());
							}
						}
						@SuppressWarnings("unchecked")
						List<Object[]> details = query.list();

						return details.size();
					}
				});
	}

	@Override
	public int countDetailsByUserNameAndLoginNameDayly(final Detail detail) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {
					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {

						String hql = "FROM Detail WHERE userName=:userName and loginName=:loginName and year=:year and month=:month";

						Query query = session.createQuery(hql);

						query.setParameter("userName", detail.getUserName());
						query.setParameter("loginName", detail.getLoginName());
						query.setParameter("year", detail.getYear());
						query.setParameter("month", detail.getMonth());

						@SuppressWarnings("unchecked")
						List<Detail> details = query.list();

						return details.size();
					}
				});
	}

	@Override
	public int countDetailByLabIpYearly(final Detail detail) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "SELECT labIp,year,SUM(duration) from Detail WHERE 1=1";
						if (detail != null) {
							if (detail.getYear() != 0)
								hql += " and year=:year";
						}
						hql += " GROUP By labIp,year ORDER By year DESC";
						Query query = session.createQuery(hql);
						if (detail != null) {
							if (detail.getYear() != 0)
								query.setParameter("year", detail.getYear());
						}
						@SuppressWarnings("unchecked")
						List<Object[]> details = query.list();

						return details.size();
					}
				});
	}

	@Override
	public int countDetailByLabIpMonthly(final Detail detail) {
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = "SELECT labIp,year,month,SUM(duration) from Detail WHERE 1=1";
						if (detail != null) {
							if (detail.getYear() != 0)
								hql += " and year=:year";
							if (detail.getMonth() != 0)
								hql += " and month=:month";
							if (detail.getLabIp() != null)
								hql += " and labIp=:labIp";
						}
						hql += " GROUP By labIp,year,month ORDER By year DESC";
						Query query = session.createQuery(hql);
						if (detail != null) {
							if (detail.getYear() != 0)
								query.setParameter("year", detail.getYear());
							if (detail.getMonth() != 0)
								query.setParameter("month", detail.getMonth());
							if (detail.getLabIp() != null)
								query.setParameter("labIp", detail.getLabIp());
						}

						@SuppressWarnings("unchecked")
						List<Object[]> details = query.list();
						return details.size();
					}
				});
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Detail> listDetailByLabIpDayly(final Page page,
			final Detail detail) {
		// TODO Auto-generated method stub
		return (List<Detail>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = " FROM Detail WHERE labIp=:labIp and year=:year and month=:month";
						Query query = session.createQuery(hql);
						query.setParameter("labIp", detail.getLabIp());
						query.setParameter("year", detail.getYear());
						query.setParameter("month", detail.getMonth());
						query.setFirstResult(page.getBegin());
						query.setMaxResults(page.getPageSize());
						List<Detail> details = query.list();

						return details;
					}
				});
	}

	@Override
	public int countDetailByLabIpDayly(final Detail detail) {
		// TODO Auto-generated method stub
		return (Integer) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						// TODO Auto-generated method stub
						String hql = " FROM Detail WHERE labIp=:labIp and year=:year and month=:month";
						Query query = session.createQuery(hql);
						query.setParameter("labIp", detail.getLabIp());
						query.setParameter("year", detail.getYear());
						query.setParameter("month", detail.getMonth());

						@SuppressWarnings("unchecked")
						List<Detail> details = query.list();

						return details.size();
					}
				});
	}

}