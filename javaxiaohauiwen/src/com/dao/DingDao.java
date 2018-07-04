package com.dao;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.HouseInfo;

public class DingDao extends BaseDao {
	public void update(int id) {
		Session session = getSession();
		Transaction t = null;
		try {
			t = session.beginTransaction();
			HouseInfo house = (HouseInfo) session.get(HouseInfo.class, id);
			house.setStatus("已预定");
			session.update(house);
			t.commit();
		} catch (Exception e) {
			if (t != null)
				t.rollback();
		} finally {
			session.close();
		}

	}
	public void change(int id) {
		Session session = getSession();
		Transaction t = null;
		try {
			t = session.beginTransaction();
			HouseInfo house = (HouseInfo) session.get(HouseInfo.class, id);
			house.setStatus("未预定");
			session.update(house);
			t.commit();
		} catch (Exception e) {
			if (t != null)
				t.rollback();
		} finally {
			session.close();
		}

	}
}
