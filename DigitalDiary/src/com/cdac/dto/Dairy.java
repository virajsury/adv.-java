package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dairy")
public class Dairy {
	@Id
	@Column(name="dairy_id")
	@GeneratedValue
	private int dairyId;
	@Column(name="title")
	private String title;
	@Column(name="date")
	private String contentDate;
	@Column(name="data")
	private String dairyData;
	private int userId;
	
	
	public Dairy() {
		super();
	}
	
	public Dairy(int dairyId) {
		super();
		this.dairyId = dairyId;
	}
	
	public int getDairyId() {
		return dairyId;
	}
	public void setDairyId(int dairyId) {
		this.dairyId = dairyId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContentDate() {
		return contentDate;
	}
	public void setContentDate(String contentDate) {
		this.contentDate = contentDate;
	}
	public String getDairyData() {
		return dairyData;
	}
	public void setDairyData(String dairyData) {
		this.dairyData = dairyData;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Dairy [dairyId=" + dairyId + ", title=" + title + ", contentDate=" + contentDate + ", dairyData="
				+ dairyData + ", userId=" + userId + "]";
	}

	

	
	
		
}
