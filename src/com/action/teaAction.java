package com.action;

import java.util.List;
import java.util.Map;

import com.dao.TXueYuanDAO;
import com.model.TXueYuan;
import org.apache.struts2.ServletActionContext;

import com.dao.TTeaDAO;
import com.model.TTea;
import com.opensymphony.xwork2.ActionSupport;

import javax.servlet.http.HttpServletRequest;

public class teaAction extends ActionSupport
{
	private int teaId;
	private String teaBianhao;
	private String teaRealname;
	private String teaSex;
	private String teaAge;
	
	private String loginName;
	private String loginPw;
	
	private String message;
	private String path;
	private Integer xueyuan;

	private TTeaDAO teaDAO;
	private TXueYuanDAO tXueYuanDAO;

	public String toTeaAdd() {
		List all = tXueYuanDAO.findAll();
		HttpServletRequest request=ServletActionContext.getRequest();

		request.setAttribute("xueyuanList", all);
	 return ActionSupport.SUCCESS;
    }

	public String teaAdd()
	{
		TTea tea=new TTea();
		tea.setTeaBianhao(teaBianhao);
		tea.setLoginName(loginName);
		tea.setLoginPw(loginPw);
		tea.setTeaRealname(teaRealname);
		tea.setTeaSex(teaSex);
		tea.setTeaAge(teaAge);
		tea.setXueyuan(xueyuan);

		tea.setDel("no");
		teaDAO.save(tea);
		this.setMessage("操作成功");
		this.setPath("teaMana.action");
		return "succeed";
	}
	
	public String teaMana()
	{
		String sql="from TTea where del='no'";
		List<TTea> teaList=teaDAO.getHibernateTemplate().find(sql);
		for (TTea tTea : teaList) {
			Integer xueyuan = tTea.getXueyuan();
			if (null != xueyuan) {
				TXueYuan txueyuan = tXueYuanDAO.findById(xueyuan);
				if (null != txueyuan) {
					String name = txueyuan.getName();
					tTea.setXueyuanName(name);
				}

			}
		}

		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("teaList", teaList);
		return ActionSupport.SUCCESS;
	}
	
	public String teaDel()
	{
		TTea tea=teaDAO.findById(teaId);
		tea.setDel("yes");
		teaDAO.attachDirty(tea);
		this.setMessage("操作成功");
		this.setPath("teaMana.action");
		return "succeed";
	}
	
	public String teaEdit()
	{
		TTea tea=teaDAO.findById(teaId);
		tea.setTeaBianhao(teaBianhao);
		tea.setLoginName(loginName);
		tea.setLoginPw(loginPw);
		tea.setTeaRealname(teaRealname);
		tea.setTeaSex(teaSex);
		tea.setTeaAge(teaAge);
		
		tea.setDel("no");
		teaDAO.attachDirty(tea);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("msg", "修改成功，重新登录后生效");
		return "msg";
	}
	
	
	public String getTeaBianhao()
	{
		return teaBianhao;
	}

	public void setTeaBianhao(String teaBianhao)
	{
		this.teaBianhao = teaBianhao;
	}

	public String getLoginName()
	{
		return loginName;
	}
	public void setLoginName(String loginName)
	{
		this.loginName = loginName;
	}
	public String getLoginPw()
	{
		return loginPw;
	}
	public void setLoginPw(String loginPw)
	{
		this.loginPw = loginPw;
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
	public void setPath(String path)
	{
		this.path = path;
	}
	public String getTeaAge()
	{
		return teaAge;
	}
	public void setTeaAge(String teaAge)
	{
		this.teaAge = teaAge;
	}
	public TTeaDAO getTeaDAO()
	{
		return teaDAO;
	}
	public void setTeaDAO(TTeaDAO teaDAO)
	{
		this.teaDAO = teaDAO;
	}
	public int getTeaId()
	{
		return teaId;
	}
	public void setTeaId(int teaId)
	{
		this.teaId = teaId;
	}
	public String getTeaRealname()
	{
		return teaRealname;
	}
	public void setTeaRealname(String teaRealname)
	{
		this.teaRealname = teaRealname;
	}
	public String getTeaSex()
	{
		return teaSex;
	}
	public void setTeaSex(String teaSex)
	{
		this.teaSex = teaSex;
	}

	public TXueYuanDAO gettXueYuanDAO() {
		return tXueYuanDAO;
	}

	public void settXueYuanDAO(TXueYuanDAO tXueYuanDAO) {
		this.tXueYuanDAO = tXueYuanDAO;
	}

	public Integer getXueyuan() {
		return xueyuan;
	}

	public void setXueyuan(Integer xueyuan) {
		this.xueyuan = xueyuan;
	}
}
