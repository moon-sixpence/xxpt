package com.model;

import java.util.Date;

/**
 * TAdmin generated by MyEclipse Persistence Tools
 */

public class TGrade implements java.io.Serializable {

	// Fields

	private Integer id;

	private  String name;

	private String createTime;


	private Integer status;

	// Constructors

	/** default constructor */
	public TGrade() {
	}

	/** full constructor */
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
}