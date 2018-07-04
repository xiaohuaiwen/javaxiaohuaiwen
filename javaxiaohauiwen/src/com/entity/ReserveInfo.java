package com.entity;

/**
 * ReserveInfo entity. @author MyEclipse Persistence Tools
 */

public class ReserveInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private HouseInfo houseInfo;
	private UserInfo userInfo;

	// Constructors

	/** default constructor */
	public ReserveInfo() {
	}

	/** full constructor */
	public ReserveInfo(HouseInfo houseInfo, UserInfo userInfo) {
		this.houseInfo = houseInfo;
		this.userInfo = userInfo;
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

}