package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IRoleDao;
import com.tarena.netctoss.entity.Role;
import com.tarena.netctoss.util.Page;

public class RoleDaoImpl extends HibernateDaoSupport implements IRoleDao {

	private static Log log = LogFactory.getLog(RoleDaoImpl.class);

	@Override
	public int addRole(Role role) {

		return (Integer) this.getHibernateTemplate().save(role);
	}

	@Override
	public int deleteRoleById(Role role) {
		try {
			this.getHibernateTemplate().delete(role);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Role> listRoles(final Role role, final Page page) {
		// TODO Auto-generated method stub
		return (List<Role>) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "FROM Role WHERE roleId!=1";
						if (role != null && role.getRoleName() != null) {
							hql += " and roleName like:roleName";
						}
						Query query = session.createQuery(hql);
						if (role != null && role.getRoleName() != null) {
							query.setParameter("roleName",
									"%" + role.getRoleName() + "%");
						}
						if (page != null) {
							query.setFirstResult(page.getBegin());
							query.setMaxResults(page.getPageSize());
						}
						List<Role> roles = query.list();

						log.info("roles.zize(): " + roles.size());
						return roles;
					}
				});
	}

	@Override
	public long countRows(final Role role) {
		// TODO Auto-generated method stub
		return (Long) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "SELECT COUNT(*) FROM Role WHERE roleId!=1";
						if (role != null && role.getRoleName() != null) {
							hql += " and roleName like:roleName";
						}
						Query query = session.createQuery(hql);
						if (role != null && role.getRoleName() != null) {
							query.setParameter("roleName",
									"%" + role.getRoleName() + "%");
						}
						// TODO Auto-generated method stub
						return query.uniqueResult();
					}
				});
	}

	@Override
	public int updateRole(final Role role) {
		// TODO Auto-generated method stub
		try {
			this.getHibernateTemplate().update(role);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return 0;
		}
		return 1;
	}

	@Override
	public Role findRoleById(Role role) {
		// TODO Auto-generated method stub
		String hql = "FROM Role WHERE roleId=?";
		@SuppressWarnings("unchecked")
		List<Role> roles = this.getHibernateTemplate().find(hql,
				role.getRoleId());
		if (roles != null)
			return roles.get(0);
		return null;
	}

	@Override
	public Role findRoleByName(Role role) {
		String hql = "FROM Role WHERE roleName=?";
		@SuppressWarnings("unchecked")
		List<Role> roles = this.getHibernateTemplate().find(hql,
				role.getRoleName());
		if (roles != null)
			return roles.get(0);
		return null;
	}

}
