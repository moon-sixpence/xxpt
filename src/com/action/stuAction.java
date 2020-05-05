package com.action;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.dao.TGradeDAO;
import com.dao.TXueYuanDAO;
import com.model.TGrade;
import com.model.TXueYuan;
import org.apache.struts2.ServletActionContext;
import com.dao.TStuDAO;
import com.model.TStu;
import com.opensymphony.xwork2.ActionSupport;

public class stuAction extends ActionSupport
{
	private int stuId;
	private String stuXuehao;
	private String stuRealname;
	private String stuSex;
	private String stuAge;
	private String loginPw;

	private  Integer grade;

	private  Integer xueyuan;
	 
	private String message;
	private String path;
	private TStuDAO stuDAO;

	private TXueYuanDAO tXueYuanDAO;

	private TGradeDAO tGradeDAO;


	public String toStuAdd() {
		List<TXueYuan> xueYuanList = tXueYuanDAO.findAll();
		HttpServletRequest request=ServletActionContext.getRequest();
		List<TGrade> gradeList = tGradeDAO.findAll();
		request.setAttribute("xueYuanList", xueYuanList);
		request.setAttribute("gradeList", gradeList);
		return  ActionSupport.SUCCESS;
	}

	public String stuAdd()
	{
		TStu stu=new TStu();
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		stu.setStuAge(stuAge);
		stu.setLoginPw(loginPw);
		stu.setZhuangtai("a");
		stu.setDel("no");
		stu.setXueyuan(xueyuan);
		stu.setGrade(grade);
		stuDAO.save(stu);
		
		this.setMessage("操作成功");
		this.setPath("stuMana.action");
		return "succeed";
	}
	
	
	
	public String stuMana()
	{
		List<TStu> stuList=stuDAO.getHibernateTemplate().find("from TStu where del='no'");
		for (TStu tStu : stuList) {
			Integer grade = tStu.getGrade();
			if(grade != null) {
				TGrade tgrade = tGradeDAO.findById(grade);
				if (null != tgrade) {
					tStu.setGradeName(tgrade.getName());
				}
			}
			Integer xueyuan = tStu.getXueyuan();
            if(null != xueyuan) {
				TXueYuan txueYuan = tXueYuanDAO.findById(xueyuan);
				if (null != txueYuan) {
					tStu.setXueyuanName(txueYuan.getName());
				}
			}

		}
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String stuDel()
	{
		TStu stu=stuDAO.findById(stuId);
		stu.setDel("yes");
		stuDAO.attachDirty(stu);
		this.setMessage("删除成功");
		this.setPath("stuMana.action");
		return "succeed";
	}
		
	
	public String stuEdit()
	{
		TStu stu=stuDAO.findById(stuId);
		
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		stu.setStuAge(stuAge);
		
		stu.setLoginPw(loginPw);
		stuDAO.attachDirty(stu);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "修改成功，重新登录后生效");
		return "msg";
	}


	public TXueYuanDAO gettXueYuanDAO() {
		return tXueYuanDAO;
	}

	public void settXueYuanDAO(TXueYuanDAO tXueYuanDAO) {
		this.tXueYuanDAO = tXueYuanDAO;
	}

	public TGradeDAO gettGradeDAO() {
		return tGradeDAO;
	}

	public void settGradeDAO(TGradeDAO tGradeDAO) {
		this.tGradeDAO = tGradeDAO;
	}

	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Integer getXueyuan() {
		return xueyuan;
	}

	public void setXueyuan(Integer xueyuan) {
		this.xueyuan = xueyuan;
	}

	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public TStuDAO getStuDAO()
	{
		return stuDAO;
	}
	public void setStuDAO(TStuDAO stuDAO)
	{
		this.stuDAO = stuDAO;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public String getStuAge()
	{
		return stuAge;
	}
	
	public String getLoginPw()
	{
		return loginPw;
	}
	public void setLoginPw(String loginPw)
	{
		this.loginPw = loginPw;
	}
	public void setStuAge(String stuAge)
	{
		this.stuAge = stuAge;
	}
	public int getStuId()
	{
		return stuId;
	}
	public void setStuId(int stuId)
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
