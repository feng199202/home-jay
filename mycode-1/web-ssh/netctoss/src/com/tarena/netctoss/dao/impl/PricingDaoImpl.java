package com.tarena.netctoss.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.tarena.netctoss.dao.IPricingDao;
import com.tarena.netctoss.entity.Pricing;
import com.tarena.netctoss.util.Page;
import com.tarena.netctoss.util.searchBean.PricingBean;

public class PricingDaoImpl extends HibernateDaoSupport implements IPricingDao {

	@Override
	public int addPricing(Pricing pricing) {
		return (Integer) this.getHibernateTemplate().save(pricing);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Pricing> listPricings(final PricingBean pricingBean,final Page page) {
		return (List<Pricing>)this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
			SQLException {
				String hql = "from Pricing where 1=1 ";
				if(pricingBean!=null){
				if(pricingBean.getPricingBeanName()!=null&&!"".equals(pricingBean.getPricingBeanName())){
					hql += " and pricingName like '%"+pricingBean.getPricingBeanName().trim()+"%'";
				}
				if(pricingBean.getBaseFeeMin()>0){
					hql += " and baseFee >="+pricingBean.getBaseFeeMin()+"";
				}
				if(pricingBean.getBaseFeeMax()>0){
					hql += " and baseFee <="+pricingBean.getBaseFeeMax()+"";
				}
				if(pricingBean.getRateFeeMin()>0){
					hql += " and rateFee >="+pricingBean.getRateFeeMin()+"";
				}
				if(pricingBean.getRateFeeMax()>0){
					hql += " and rateFee <="+pricingBean.getRateFeeMax()+"";
				}
				}
				Query query = session.createQuery(hql);
				if(page!=null){
				query.setFirstResult(page.getBegin());
				query.setMaxResults(page.getPageSize());}
				query.setCacheable(true);
			
			   return query.list();
			}
		});
	}
	@Override
	public long countRows(final PricingBean pricingBean) {

		return (Long) this.getHibernateTemplate().execute(
				new HibernateCallback() {

					@Override
					public Object doInHibernate(Session session)
							throws HibernateException, SQLException {
						String hql = "SELECT COUNT(*) from Pricing where 1=1";
						if(pricingBean!=null){
							if(pricingBean.getPricingBeanName()!=null&&!"".equals(pricingBean.getPricingBeanName())){
								hql += " and pricingName like '%"+pricingBean.getPricingBeanName().trim()+"%'";
							}
							if(pricingBean.getBaseFeeMin()>0){
								hql += " and baseFee >="+pricingBean.getBaseFeeMin()+"";
							}
							if(pricingBean.getBaseFeeMax()>0){
								hql += " and baseFee <="+pricingBean.getBaseFeeMax()+"";
							}
							if(pricingBean.getRateFeeMin()>0){
								hql += " and rateFee >="+pricingBean.getRateFeeMin()+"";
							}
							if(pricingBean.getRateFeeMax()>0){
								hql += " and rateFee <="+pricingBean.getRateFeeMax()+"";
							}
							}
						Query query = session.createQuery(hql);
						long rows = (Long) query.uniqueResult();
						return rows;
					}
				});
	}
	@Override
	public int updatePricingById(final Pricing pricing) {	
		return (Integer) this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="update Pricing set pricingName=:pricingName,baseFee=:baseFee" +
						",rateFee=:rateFee,description=:description where pricingId=:pricingId";
				Query query=session.createQuery(hql);
				query.setParameter("pricingName", pricing.getPricingName());
				query.setParameter("baseFee", pricing.getBaseFee());
				query.setParameter("rateFee", pricing.getRateFee());
				query.setParameter("description", pricing.getDescription());
				query.setParameter("pricingId", pricing.getPricingId());			
				return query.executeUpdate();
			}			
		});
		
	}

	@Override
	public int deletePricingById(final Pricing pricing) {
		return (Integer) this.getHibernateTemplate().execute(new HibernateCallback(){

			public Object doInHibernate(Session session) throws HibernateException, SQLException {
				String hql="delete from Pricing  where pricingId=:pricingId";
				Query query=session.createQuery(hql);
				query.setParameter("pricingId", pricing.getPricingId());			
				return query.executeUpdate();
			}			
		});
	}
	
	public Pricing findPricingById(final int pricingId){
		
return (Pricing) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="from Pricing where pricingId=:pricingId";
				Query query=session.createQuery(hql);
				query.setParameter("pricingId",pricingId);
				return query.uniqueResult();
			}
		});
	}
	public Pricing findPricingByName(final Pricing pricing){
return (Pricing) this.getHibernateTemplate().execute(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				String hql="from Pricing where pricingName=:pricingName";
				Query query=session.createQuery(hql);
				query.setParameter("pricingName",pricing.getPricingName());
				Pricing foundPricing=(Pricing) query.uniqueResult();
				return foundPricing;
						
			}
		});
	}

}
