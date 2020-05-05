package com.dao;

import com.model.TTea;
import com.model.TXueYuan;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Data access object (DAO) for domain model class TTea.
 * 
 * @see TTea
 * @author MyEclipse Persistence Tools
 */

public class TXueYuanDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TXueYuanDAO.class);



	protected void initDao()
	{
		// do nothing
	}



	public List findAll()
	{
		log.debug("finding all TTea instances");
		try
		{
			String queryString = "from TXueYuan";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TXueYuan findById(Integer id)
	{
		log.debug("finding id TTea instances");
		try
		{
			String queryString = "from TXueYuan where  id = " + id;
			return (TXueYuan)getHibernateTemplate().get("com.model.TXueYuan",id);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}


	public static TXueYuanDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TXueYuanDAO) ctx.getBean("TXueYuanDAO");
	}
}