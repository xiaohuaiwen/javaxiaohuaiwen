package com.entity;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
/**
 * HouseInfo entity. @author MyEclipse Persistence Tools
 */

public class HouseInfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private UserInfo userInfo;
	private String type;
	private String homeName;
	private String area;
	private String circle;
	private String locationName;
	private String rentType;
	private Integer room;
	private Integer lroom;
	private Integer broom;
	private Integer sqm;
	private String fixture;
	private String direction;
	private Integer floor;
	private Integer floorFlag;
	private Integer sfloor;
	private Integer price;
	private Integer priceFlag;
	private String moneyType;
	private String title;
	private String description;
	private String facility;
	private String special;
	private String img;
	private Date curdate;
	private String status;
	private Set dings = new HashSet(0);
	private Set reserveInfos = new HashSet(0);

	// Constructors

	/** default constructor */
	public HouseInfo() {
	}

	/** full constructor */
	public HouseInfo(UserInfo userInfo, String type, String homeName,
			String area, String circle, String locationName, String rentType,
			Integer room, Integer lroom, Integer broom, Integer sqm,
			String fixture, String direction, Integer floor, Integer floorFlag,
			Integer sfloor, Integer price, Integer priceFlag, String moneyType,
			String title, String description, String facility, String special,
			String img, Date curdate, String status, Set dings,
			Set reserveInfos) {
		this.userInfo = userInfo;
		this.type = type;
		this.homeName = homeName;
		this.area = area;
		this.circle = circle;
		this.locationName = locationName;
		this.rentType = rentType;
		this.room = room;
		this.lroom = lroom;
		this.broom = broom;
		this.sqm = sqm;
		this.fixture = fixture;
		this.direction = direction;
		this.floor = floor;
		this.floorFlag = floorFlag;
		this.sfloor = sfloor;
		this.price = price;
		this.priceFlag = priceFlag;
		this.moneyType = moneyType;
		this.title = title;
		this.description = description;
		this.facility = facility;
		this.special = special;
		this.img = img;
		this.curdate = curdate;
		this.status = status;
		this.dings = dings;
		this.reserveInfos = reserveInfos;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public UserInfo getUserInfo() {
		return this.userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getHomeName() {
		return this.homeName;
	}

	public void setHomeName(String homeName) {
		this.homeName = homeName;
	}

	public String getArea() {
		return this.area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCircle() {
		return this.circle;
	}

	public void setCircle(String circle) {
		this.circle = circle;
	}

	public String getLocationName() {
		return this.locationName;
	}

	public void setLocationName(String locationName) {
		this.locationName = locationName;
	}

	public String getRentType() {
		return this.rentType;
	}

	public void setRentType(String rentType) {
		this.rentType = rentType;
	}

	public Integer getRoom() {
		return this.room;
	}

	public void setRoom(Integer room) {
		this.room = room;
	}

	public Integer getLroom() {
		return this.lroom;
	}

	public void setLroom(Integer lroom) {
		this.lroom = lroom;
	}

	public Integer getBroom() {
		return this.broom;
	}

	public void setBroom(Integer broom) {
		this.broom = broom;
	}

	public Integer getSqm() {
		return this.sqm;
	}

	public void setSqm(Integer sqm) {
		this.sqm = sqm;
	}

	public String getFixture() {
		return this.fixture;
	}

	public void setFixture(String fixture) {
		this.fixture = fixture;
	}

	public String getDirection() {
		return this.direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public Integer getFloor() {
		return this.floor;
	}

	public void setFloor(Integer floor) {
		this.floor = floor;
	}

	public Integer getFloorFlag() {
		return this.floorFlag;
	}

	public void setFloorFlag(Integer floorFlag) {
		this.floorFlag = floorFlag;
	}

	public Integer getSfloor() {
		return this.sfloor;
	}

	public void setSfloor(Integer sfloor) {
		this.sfloor = sfloor;
	}

	public Integer getPrice() {
		return this.price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getPriceFlag() {
		return this.priceFlag;
	}

	public void setPriceFlag(Integer priceFlag) {
		this.priceFlag = priceFlag;
	}

	public String getMoneyType() {
		return this.moneyType;
	}

	public void setMoneyType(String moneyType) {
		this.moneyType = moneyType;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getFacility() {
		return this.facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public String getSpecial() {
		return this.special;
	}

	public void setSpecial(String special) {
		this.special = special;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getCurdate() {
		return this.curdate;
	}

	public void setCurdate(Date date) {
		this.curdate = date;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
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

}