package com.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.dao.DingDao;
import com.entity.Ding;
import com.entity.HouseInfo;
import com.entity.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DingAction extends ActionSupport {
	Ding ding;
	DingDao dingDao;

	public String ding(){
		int id=Integer.parseInt(ServletActionContext.getRequest().getParameter("ding.houseInfo.id"));
		ding.setLastdate(new Date());
		dingDao.add(ding);
		dingDao.update(id);
		return "ok";
	}
	
	
	public String haveding(){
		List<Ding> listDing=dingDao.show("from Ding",null);
		ActionContext.getContext().put("dingList", listDing);
		return "haveding";
	}
	public String del(){
		int id=Integer.parseInt(ServletActionContext.getRequest().getParameter("hid"));
		dingDao.change(id);
		dingDao.del(ding);
		return haveding();
	}
	
	public String myding(){
		UserInfo user=(UserInfo)ActionContext.getContext().getSession().get("userList");
		List listDing=dingDao.show("from Ding where userInfo.id=?", new Object[]{user.getId()});
		ActionContext.getContext().put("dingList", listDing);
		return "myding";
	}
	
	public DingDao getDingDao() {
		return dingDao;
	}

	public void setDingDao(DingDao dingDao) {
		this.dingDao = dingDao;
	}

	public Ding getDing() {
		return ding;
	}

	public void setDing(Ding ding) {
		this.ding = ding;
	}

}
