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

import com.tarena.netctoss.dao.ISystemModuleDao;
import com.tarena.netctoss.entity.SystemModule;

public class SystemModuleImpl extends HibernateDaoSupport implements
		ISystemModuleDao {
	private static Log log = LogFactory.getLog(SystemModule.class);

	@Override
	public int addSystemModule(SystemModule systemModule) {
		return (Integer) this.getHibernateTemplate().save(systemModule);
	}

	@Override
	public int deleteSystemModule(SystemModule systemModule) {
		return 0;
	}

	@Override
	public int updateSystemModule(SystemModule systemModule) {
		// TODO Auto-generated method stub
		return 0;
	}
	/**
	 * 列出所有的系统模块
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<SystemModule> listSystemModule() {
		// TODO Auto-generated method stub
		return (List<SystemModule>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "FROM SystemModule";
						Query query = session.createQuery(hql);
						List<SystemModule> modules = query.list();
						log.info("modules " + modules.size());
						return modules;
					}
				});
	}

	@Override
	public SystemModule findSystemModuleById(final int id) {
		// TODO Auto-generated method stub
		
		return (SystemModule) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				// TODO Auto-generated method stub
				String hql = "FROM SystemModule WHERE systemModuleId=:id";
				Query query = session.createQuery(hql);
				query.setParameter("id", id);
				return query.uniqueResult();
			}
		});
	}

}
