package com.model;

/**
 * TStu generated by MyEclipse Persistence Tools
 */

public class TStu implements java.io.Serializable
{

	// Fields

	private Integer stuId;
	private String stuXuehao;
	private String stuRealname;
	private String stuSex;

	private String stuAge;
	private String loginPw;
	private String zhuangtai;
	private String del;
	private  Integer xueyuan;
	private  Integer grade;

	private  String gradeName;

	private  String xueyuanName;

	public String getGradeName() {
		return gradeName;
	}

	public void setGradeName(String gradeName) {
		this.gradeName = gradeName;
	}

	public String getXueyuanName() {
		return xueyuanName;
	}

	public void setXueyuanName(String xueyuanName) {
		this.xueyuanName = xueyuanName;
	}

	public Integer getXueyuan() {
		return xueyuan;
	}

	public void setXueyuan(Integer xueyuan) {
		this.xueyuan = xueyuan;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public String getDel()
	{
		return del;
	}
	public void setDel(String del)
	{
		this.del = del;
	}
	
	public String getZhuangtai()
	{
		return zhuangtai;
	}
	public void setZhuangtai(String zhuangtai)
	{
		this.zhuangtai = zhuangtai;
	}
	public String getLoginPw()
	{
		return loginPw;
	}
	public void setLoginPw(String loginPw)
	{
		this.loginPw = loginPw;
	}
	public String getStuAge()
	{
		return stuAge;
	}
	public void setStuAge(String stuAge)
	{
		this.stuAge = stuAge;
	}
	public Integer getStuId()
	{
		return stuId;
	}
	public void setStuId(Integer stuId)
	{
		this.stuId = stuId;
	}
	public String getStuRealname()
	{
		return stuRealname;
	}
	public void setStuRealname(String stuRealname)
	{
		this.stuRealname = stuRealname;
	}
	public String getStuSex()
	{
		return stuSex;
	}
	public void setStuSex(String stuSex)
	{
		this.stuSex = stuSex;
	}
	public String getStuXuehao()
	{
		return stuXuehao;
	}
	public void setStuXuehao(String stuXuehao)
	{
		this.stuXuehao = stuXuehao;
	}


}