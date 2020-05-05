package com.dao;

import com.model.TGrade;
import com.model.TTea;
import com.model.TXueYuan;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

/**
 * Data access object (DAO) for domain model class TTea.
 * 
 * @see TTea
 * @author MyEclipse Persistence Tools
 */

public class TGradeDAO extends HibernateDaoSupport
{
	private static final Log log = LogFactory.getLog(TGradeDAO.class);



	protected void initDao()
	{
		// do nothing
	}



	public List findAll()
	{
		log.debug("finding all TTea instances");
		try
		{
			String queryString = "from TGrade";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}

	public TGrade findById(Integer id)
	{
		log.debug("finding id TTea instances");
		try
		{
			String queryString = "from TGrade where  id = " + id;
			return (TGrade)getHibernateTemplate().get("com.model.TGrade",id);
		} catch (RuntimeException re)
		{
			log.error("find all failed", re);
			throw re;
		}
	}


	public static TGradeDAO getFromApplicationContext(ApplicationContext ctx)
	{
		return (TGradeDAO) ctx.getBean("TGradeDAO");
	}
}