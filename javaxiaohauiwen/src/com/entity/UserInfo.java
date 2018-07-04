package com.entity;

import java.util.HashSet;
import java.util.Set;

/**
 * UserInfo entity. @author MyEclipse Persistence Tools
 */

public class UserInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String userName;
	private String pwd;
	private String realName;
	private String tel;
	private String role;
	private Set dings = new HashSet(0);
	private Set reserveInfos = new HashSet(0);
	private Set houseInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public UserInfo() {
	}

	/** full constructor */
	public UserInfo(String userName, String pwd, String realName, String tel,
			String role, Set dings, Set reserveInfos, Set houseInfos) {
		this.userName = userName;
		this.pwd = pwd;
		this.realName = realName;
		this.tel = tel;
		this.role = role;
		this.dings = dings;
		this.reserveInfos = reserveInfos;
		this.houseInfos = houseInfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPwd() {
		return this.pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getRealName() {
		return this.realName;
	}

	public void setRealName(String realName) {
		this.realName = realName;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Set getDings() {
		return this.dings;
	}

	public void setDings(Set dings) {
		this.dings = dings;
	}

	public Set getReserveInfos() {
		return this.reserveInfos;
	}

	public void setReserveInfos(Set reserveInfos) {
		this.reserveInfos = reserveInfos;
	}

	public Set getHouseInfos() {
		return this.houseInfos;
	}

	public void setHouseInfos(Set houseInfos) {
		this.houseInfos = houseInfos;
	}

}