package com.myhomepage.action;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;




import org.apache.commons.io.FileUtils;  
import org.apache.struts2.ServletActionContext;  




import com.myhomepage.utils.Db;
import com.opensymphony.xwork2.ActionSupport;

public class UploadAction extends ActionSupport  {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private File uploadFile;   
    //��������������Ե��������������϶��Ĺ��򣬼�Ϊ"�����ļ��ֶε�����" + "��Ӧ�ĺ�׺"    
    private String uploadFileContentType; // �õ��ϴ����ļ�����������,    
    private String uploadFileFileName; // �õ��ϴ����ļ�������    
      
   
      
    public File getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(File uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getUploadFileContentType() {  
        return uploadFileContentType;  
    }  
    public void setUploadFileContentType(String uploadFileContentType) {  
        this.uploadFileContentType = uploadFileContentType;  
    }  
      
    public String getUploadFileFileName() {  
        return uploadFileFileName;  
    }  
    public void setUploadFileFileName(String uploadFileFileName) {  
        this.uploadFileFileName = uploadFileFileName;  
    }  
      
  public String execute() throws IOException {
	  String realPath = ServletActionContext.getServletContext().getRealPath("/images");  
      
    
      System.out.println(realPath);
     
      SimpleDateFormat date1 = new SimpleDateFormat("yyyy-MM-dd");  
      String dateTime1 = date1.format(new Date()); 
      uploadFileFileName = UUID.randomUUID().toString()+uploadFileFileName.substring(uploadFileFileName.lastIndexOf('.'));  
      
      System.out.println(uploadFileContentType);   
      //����ͼƬ����  
      if(uploadFileContentType.equals("image/gif") || uploadFileContentType.equals("image/jpeg") ||   
              uploadFileContentType.equals("image/png") || uploadFileContentType.equals("image/bmp") ||   
              uploadFileContentType.equals("image/x-icon") || uploadFileContentType.equals("image/pjpeg"))  
      {  
          //�ж��ļ��Ƿ�Ϊ��,�����ļ����ܴ���2M  Ӧ����ǰ��Ҳ������֤���������ִ���
          if(uploadFile != null && uploadFile.length() < 2097152)  
          {    
              //���� parent ����·������ child ·�����ַ�������һ���� File ʵ����  
              File filePath = new File(new File(realPath), uploadFileFileName);    
              //�ж�·���Ƿ����    
              if(!filePath.getParentFile().exists())  
              {  
                  //��������ڣ���ݹ鴴����·��   
                  filePath.getParentFile().mkdirs();  
              }  
              Db db=new Db();
             
              String sql="insert into blog_pictures (p_name,p_date)values('"+uploadFileFileName+"','"+dateTime1+"')";
              db.doSelect(sql);
              db.doInsert(sql);
              System.out.println(uploadFileFileName);   
                
              //���ļ����浽Ӳ����,Struts2��������Զ�ɾ����ʱ�ļ�  
              try {  
                  FileUtils.copyFile(uploadFile, filePath);  
              } catch (IOException e) {  
                  System.out.println("ͼƬ�ϴ�ʧ��");   
                  e.printStackTrace();  
              }   
          }    
      }  
      return SUCCESS;    
  }
}
