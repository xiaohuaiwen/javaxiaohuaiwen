package com.action;

import java.io.File;
import java.io.IOException;
import java.util.*;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.dao.HouseDao;
import com.entity.HouseInfo;
import com.entity.UserInfo;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class HouseAction extends  ActionSupport{
	HouseDao houseDao;
	HouseInfo house;
	File houseImg;
	static Set<HouseInfo> history=new HashSet();
	public File getHouseImg() {
		return houseImg;
	}
	public void setHouseImg(File houseImg) {
		this.houseImg = houseImg;
	}
	public String getHouseImgFileName() {
		return houseImgFileName;
	}
	public void setHouseImgFileName(String houseImgFileName) {
		this.houseImgFileName = houseImgFileName;
	}

	String houseImgFileName;
	int curpage=1;
	int pagesize=10;

	public String detail(){
		HouseInfo obj = (HouseInfo)houseDao.findById(HouseInfo.class, house.getId());
		System.out.println(history);
		history.add(obj);
		ActionContext.getContext().getSession().put("historyList", history);
		ActionContext.getContext().put("houseList", obj);
		return "detail";
	}
	
	public String load(){
		int pageNo=Integer.parseInt(ServletActionContext.getRequest().getParameter("pageNo"));
		int total=houseDao.show("from HouseInfo where status='未预定'", null).size();
		int maxpage=(total-1)/pagesize+1;
		curpage=pageNo;
		if(pageNo<=0){
			curpage=1;
		}
		if(pageNo>=maxpage){
			curpage=maxpage;
		}
		List<HouseInfo> listHouse=houseDao.pager("from HouseInfo where status=? order by curdate desc",new Object[]{"未预定"},curpage,pagesize);
		ActionContext.getContext().put("houseList", listHouse);
		ActionContext.getContext().put("total", total);
		ActionContext.getContext().put("curpage", curpage);
		ActionContext.getContext().put("maxpage", maxpage);
		return "index";
	}


	public String select(){
		StringBuilder hql = new StringBuilder("from HouseInfo where status='未预定'");
		List list=new ArrayList();
		String area=ServletActionContext.getRequest().getParameter("house.area");
		String priceFlag=ServletActionContext.getRequest().getParameter("house.priceFlag");
		String room=ServletActionContext.getRequest().getParameter("house.room");
		String rentType=ServletActionContext.getRequest().getParameter("house.rentType");
		if(area!=null){
			hql.append(" and area=?");
			list.add(area);
		}
		if(priceFlag!=null){
			hql.append(" and priceFlag=?");
			list.add(Integer.parseInt(priceFlag));
		}
		if(room!=null){
			hql.append(" and room=?");
			list.add(Integer.parseInt(room));
		}
		if(rentType!=null){
			hql.append(" and rentType=?");
			list.add(rentType);
		}
		hql.append(" order by curdate desc");
		System.out.println(hql);
		System.out.println(list);
		List listHouse=houseDao.show(hql.toString(), list.toArray());
		ActionContext.getContext().put("houseList", listHouse);
		return "index";
	}
	
	public String BlurredSelect(){
		String titlename = ServletActionContext.getRequest().getParameter("house.title");
		System.out.println(titlename);
		List listHouse = houseDao.show("from HouseInfo where title like ? order by curdate desc",new Object[]{"%"+titlename+"%"});
		ActionContext.getContext().put("houseList", listHouse);
		return "index";
	}
	
	public String add() throws IOException{
		UserInfo user=(UserInfo)ActionContext.getContext().getSession().get("userList");
		int price=house.getPrice();
		int floor=house.getFloor();
		
		System.out.println("floor="+floor);
		File target=new File(ServletActionContext.getServletContext().getRealPath("/Images"),houseImgFileName);
		FileUtils.copyFile(houseImg, target);
		if(price<=500){
			house.setPriceFlag(1);
		}else if(price>500&&price<=800){
			house.setPriceFlag(2);
		}else if(price>800&&price<=1200){
			house.setPriceFlag(3);
		}else if(price>1200&&price<=1800){
			house.setPriceFlag(4);
		}else if(price>1800&&price<=2500){
			house.setPriceFlag(5);
		}else if(price>2500&&price<=3500){
			house.setPriceFlag(6);
		}else if(price>3500&&price<=5000){
			house.setPriceFlag(7);
		}else{
			house.setPriceFlag(8);
		}
		if(floor==-1){
			house.setFloorFlag(1);
		}else if(floor==1){
			house.setFloorFlag(2);
		}else if(floor>1&&floor<=6){
			house.setFloorFlag(3);
		}else if(floor>6&&floor<=12){
			house.setFloorFlag(4);
		}else{
			house.setFloorFlag(4);
		}
		house.setCurdate(new Date());
		house.setStatus("未预定");
		house.setImg(houseImgFileName);
		System.out.println(house.getFixture());
		houseDao.add(house);
		
		return SUCCESS;
	}
	
	
	public String adminshow(){
		List<HouseInfo> listHouse=houseDao.show("from HouseInfo",null);
		ActionContext.getContext().put("houseList", listHouse);
		return "adminshow";
	}
	 
	public String admindetail(){
		
		Object obj = houseDao.findById(HouseInfo.class, house.getId());
		
		ActionContext.getContext().put("houseList", obj);
		return "admindetail";
	}
	public String del(){
		houseDao.del(house);
		return adminshow();
	}
	public String modify(){
		Object obj = houseDao.findById(HouseInfo.class, house.getId());
		ActionContext.getContext().put("houseList", obj);
		return "update";
	}
	public String update(){
		int price=house.getPrice();
		int floor=house.getFloor();
		if(price<=500){
			house.setPriceFlag(1);
		}else if(price>500&&price<=800){
			house.setPriceFlag(2);
		}else if(price>800&&price<=1200){
			house.setPriceFlag(3);
		}else if(price>1200&&price<=1800){
			house.setPriceFlag(4);
		}else if(price>1800&&price<=2500){
			house.setPriceFlag(5);
		}else if(price>2500&&price<=3500){
			house.setPriceFlag(6);
		}else if(price>3500&&price<=5000){
			house.setPriceFlag(7);
		}else{
			house.setPriceFlag(8);
		}
		if(floor==-1){
			house.setFloorFlag(1);
		}else if(floor==1){
			house.setFloorFlag(2);
		}else if(floor>1&&floor<=6){
			house.setFloorFlag(3);
		}else if(floor>6&&floor<=12){
			house.setFloorFlag(4);
		}else{
			house.setFloorFlag(4);
		}
		houseDao.modify(house);
		return adminshow();
	}
	public String myhouse(){
		UserInfo user=(UserInfo)ActionContext.getContext().getSession().get("userList");
		List listHouse=houseDao.show("from HouseInfo where userInfo.id=?", new Object[]{user.getId()});
		ActionContext.getContext().put("houseList", listHouse);
		return "myhouse";
	}
	public HouseInfo getHouse() {
		return house;
	}

	public void setHouse(HouseInfo house) {
		this.house = house;
	}

	public HouseDao getHouseDao() {
		return houseDao;
	}

	public void setHouseDao(HouseDao houseDao) {
		this.houseDao = houseDao;
	}
	
	
}
