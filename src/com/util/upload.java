package com.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class upload extends ActionSupport
{
	private static final int BUFFER_SIZE = 16 * 1024;
	private File fujian;
	private String fujianFileName;
	private String fujianContentType;
	
	
	public String upload()
	{
        Map request=(Map)ServletActionContext.getContext().get("request");
		String newFujianName=new Date().getTime()+fujianFileName.substring(fujianFileName.indexOf("."));
		if (
		        !(fujianFileName.contains("doc")  || fujianFileName.contains("ppt")
                || fujianFileName.contains("txt")
                || fujianFileName.contains("avi")
                || fujianFileName.contains("mp4")
                )
        ) {
            request.put("msg", "�ݲ�֧�ִ����ļ����͵��ϴ�");
            return ActionSupport.SUCCESS;
        }
		String dstPath = ServletActionContext.getServletContext().getRealPath("upload")+ "\\" + newFujianName;
		File dstFile = new File(dstPath);
		copy(this.getFujian(),dstFile);

		request.put("newFujianName", newFujianName);
		request.put("oldFujianName", fujianFileName);
		request.put("fujianPath", "/upload"+ "/" + newFujianName);


		return ActionSupport.SUCCESS;
	}
	
	
	private static void copy(File src, File dst) 
    {
        InputStream in = null;
        OutputStream out = null;
        try 
        {
            in = new BufferedInputStream(new FileInputStream(src), BUFFER_SIZE);
            out = new BufferedOutputStream(new FileOutputStream(dst),BUFFER_SIZE);
            byte[] buffer = new byte[BUFFER_SIZE];
            int len = 0;
            while ((len = in.read(buffer)) > 0) 
            {
                out.write(buffer, 0, len);
            }
        } 
        catch (Exception e)
        {
            e.printStackTrace();
        } 
        finally
        {
            if (null != in) 
            {
                try 
                {
                    in.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
            if (null != out) 
            {
                try 
                {
                    out.close();
                } 
                catch (IOException e) 
                {
                    e.printStackTrace();
                }
            }
        }
    }


	public File getFujian()
	{
		return fujian;
	}


	public void setFujian(File fujian)
	{
		this.fujian = fujian;
	}


	public String getFujianContentType()
	{
		return fujianContentType;
	}


	public void setFujianContentType(String fujianContentType)
	{
		this.fujianContentType = fujianContentType;
	}


	public String getFujianFileName()
	{
		return fujianFileName;
	}


	public void setFujianFileName(String fujianFileName)
	{
		this.fujianFileName = fujianFileName;
	}

}
