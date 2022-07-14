package com.cdac.dao;

import java.util.List;

	
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Dairy;

@Repository
public class DairyDaoImple implements DairyDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public void insertDairy(Dairy dairy) {
	//	System.out.println("dairy"+dairy.toString());
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				session.save(dairy);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public void deleteDairy(int dairyId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				session.delete(new Dairy(dairyId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});		
	}

	@Override
	public Dairy selectDairy(int dairyId) {
		Dairy dairy= hibernateTemplate.execute(new HibernateCallback<Dairy>() {

			@Override
			public Dairy doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				Dairy dr=(Dairy)session.get(Dairy.class,dairyId);
				tr.commit();
				session.flush();
				session.close();
				return dr;
			}
		
		});	
		return dairy;
	}

	@Override
	public void updateDairy(Dairy dairy) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
//				Dairy da=(Dairy)session.get(Dairy.class,dairy.getDairyId());
//				da.setTitle(dairy.getTitle());
//				da.setContentDate(dairy.getContentDate());
//				da.setDairyData(dairy.getDairyData());
				System.out.println(dairy);
				session.update(dairy);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});		
	}

	@Override
	public List<Dairy> selectAll(int userId) {
		List<Dairy> dairyList= hibernateTemplate.execute(new HibernateCallback<List<Dairy>>() {

			@Override
			public List<Dairy> doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				Query q=session.createQuery("from Dairy where userId=?");
				q.setInteger(0,userId);
				List<Dairy> li=q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		return dairyList;
	}
	
	@Override
	public List<Dairy> searchAll(String contentDate) {
		List<Dairy> searchList= hibernateTemplate.execute(new HibernateCallback<List<Dairy>>() {

			@Override
			public List<Dairy> doInHibernate(Session session) throws HibernateException {
				Transaction tr= session.beginTransaction();
				Query q=session.createQuery("from Dairy where contentDate=?");
				q.setString(0,contentDate);
				List<Dairy> li=q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		return searchList;
	}

	
}
