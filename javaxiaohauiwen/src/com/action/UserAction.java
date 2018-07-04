package com.action;

import java.util.*;

import org.apache.struts2.ServletActionContext;

import com.dao.UserDao;
import com.entity.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport {
	UserDao userDao;
	UserInfo user;
	public String login(){
		List<UserInfo> listUser=userDao.show("from UserInfo where userName=? and pwd=?", new Object[]{user.getUserName(),user.getPwd()});
		if(listUser.size()==0){
			return "login";
		}else{
			ActionContext.getContext().getSession().put("userList", listUser.get(0));
			return SUCCESS;
		}
	}
	
	public String adminLogin(){
		List<UserInfo> listUser=userDao.show("from UserInfo where userName=? and pwd=?", new Object[]{user.getUserName(),user.getPwd()});
		if(listUser.size()==0){
			return "adminlogin";
		}else if("管理员".equals(listUser.get(0).getRole())){
			ActionContext.getContext().getSession().put("userList", listUser.get(0));
			return "adminindex";
		}else{
			return "adminlogin";
		}
		
		}
	
	public String reg(){
		user.setRole("用户");
		userDao.add(user);
		return "login";
	}
	public String showuser(){
		List<UserInfo> listUser=userDao.show("from UserInfo where role='用户'", null);
		ActionContext.getContext().put("userList", listUser);
		return "showuser";
	}
	
	public String del(){
		UserInfo u = (UserInfo)userDao.findById(UserInfo.class, user.getId());
		userDao.del(u);
		return showuser();
	}
	
	
	
	public UserDao getUserDao() {
		return userDao;
	}
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public UserInfo getUser() {
		return user;
	}
	public void setUser(UserInfo user) {
		this.user = user;
	}
	
	
}
