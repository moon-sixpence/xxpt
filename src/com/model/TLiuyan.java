package com.model;

/**
 * TLiuyan generated by MyEclipse Persistence Tools
 */

public class TLiuyan implements java.io.Serializable
{

	 public  static  final  Integer  STATUS_SHANGJIA= 1;
	 public  static  final  Integer  STATUS_XIAJIA= 0;
	private Integer id;
	private String neirong;
	private String liuyanshi;
	private Integer stuId;
	private String studentName;

	private String huifu;
	
	private String huifuId;
	
	private String huifuName;
	private String huifushi;

	private  Integer status;

	private Integer source;


	public Integer getSource() {
		return source;
	}

	public void setSource(Integer source) {
		this.source = source;
	}

	public String getHuifuId() {
		return huifuId;
	}

	public void setHuifuId(String huifuId) {
		this.huifuId = huifuId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getHuifuName() {
		return huifuName;
	}

	public void setHuifuName(String huifuName) {
		this.huifuName = huifuName;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getHuifu()
	{
		return huifu;
	}
	public void setHuifu(String huifu)
	{
		this.huifu = huifu;
	}
	public String getHuifushi()
	{
		return huifushi;
	}
	public void setHuifushi(String huifushi)
	{
		this.huifushi = huifushi;
	}
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getLiuyanshi()
	{
		return liuyanshi;
	}
	public void setLiuyanshi(String liuyanshi)
	{
		this.liuyanshi = liuyanshi;
	}
	public String getNeirong()
	{
		return neirong;
	}
	public void setNeirong(String neirong)
	{
		this.neirong = neirong;
	}
	public Integer getStuId()
	{
		return stuId;
	}
	public void setStuId(Integer stuId)
	{
		this.stuId = stuId;
	}

}