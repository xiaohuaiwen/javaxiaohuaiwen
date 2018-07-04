package com.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class BaseDao extends HibernateDaoSupport {
		// ���
		public void add(Object obj) {
			getHibernateTemplate().save(obj);
		}

		// ɾ��
		public void del(Object obj) {
			getHibernateTemplate().delete(obj);
		}

		// ��ѯ
		public List show(String hql, Object[] obj) {
			return getHibernateTemplate().find(hql, obj);
		}
		
		// �޸�
		public void modify(Object obj) {
			getHibernateTemplate().update(obj);
		}
		
		// ��ҳ
		public List pager(String hql,Object[] obj, int curpage, int pagesize) {
			Session session=null;
			List list=null;
			try{
				session=getSession();
				Query query=session.createQuery(hql);
				if(obj!=null){
					for(int i=0;i<obj.length;i++){
						query.setParameter(i, obj[i]);
					}
				}
				query.setFirstResult((curpage-1)*pagesize);
				query.setMaxResults(pagesize);
				list=query.list();
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				session.close();
			}
			return list;
		}
		
		// ���ID��ѯһ�����
		public Object findById(Class clazz, Serializable id) {
			return getHibernateTemplate().get(clazz, id);
		}
		public List find(String hql, Object[] params) {
			return getHibernateTemplate().find(hql, params);
		}

		
	
}
