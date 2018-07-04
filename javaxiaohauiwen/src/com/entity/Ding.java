package com.entity;

import java.util.Date;

/**
 * Ding entity. @author MyEclipse Persistence Tools
 */

public class Ding implements java.io.Serializable {

	// Fields

	private Integer id;
	private HouseInfo houseInfo;
	private UserInfo userInfo;
	private Date lastdate;

	// Constructors

	/** default constructor */
	public Ding() {
	}

	/** full constructor */
	public Ding(HouseInfo houseInfo, UserInfo userInfo, Date lastdate) {
		this.houseInfo = houseInfo;
		this.userInfo = userInfo;
		this.lastdate = lastdate;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public HouseInfo getHouseInfo() {
		return this.houseInfo;
	}

	public void setHouseInfo(HouseInfo houseInfo) {
		this.houseInfo = houseInfo;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public Date getLastdate() {
		return this.lastdate;
	}

	public void setLastdate(Date lastdate) {
		this.lastdate = lastdate;
	}

}