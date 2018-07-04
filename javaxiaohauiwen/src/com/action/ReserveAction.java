package com.action;

import com.dao.ReserveDao;
import com.opensymphony.xwork2.ActionSupport;

public class ReserveAction extends ActionSupport {
	ReserveDao reserveDao;

	public ReserveDao getReserveDao() {
		return reserveDao;
	}

	public void setReserveDao(ReserveDao reserveDao) {
		this.reserveDao = reserveDao;
	}
}
