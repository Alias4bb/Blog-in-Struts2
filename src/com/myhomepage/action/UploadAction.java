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
    //下面的这两个属性的命名必须遵守上定的规则，即为"表单中文件字段的名称" + "相应的后缀"    
    private String uploadFileContentType; // 得到上传的文件的数据类型,    
    private String uploadFileFileName; // 得到上传的文件的名称    
      
   
      
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
      //控制图片类型  
      if(uploadFileContentType.equals("image/gif") || uploadFileContentType.equals("image/jpeg") ||   
              uploadFileContentType.equals("image/png") || uploadFileContentType.equals("image/bmp") ||   
              uploadFileContentType.equals("image/x-icon") || uploadFileContentType.equals("image/pjpeg"))  
      {  
          //判断文件是否为空,并且文件不能大于2M  应该在前端也进行验证，否则会出现错误
          if(uploadFile != null && uploadFile.length() < 2097152)  
          {    
              //根据 parent 抽象路径名和 child 路径名字符串创建一个新 File 实例。  
              File filePath = new File(new File(realPath), uploadFileFileName);    
              //判断路径是否存在    
              if(!filePath.getParentFile().exists())  
              {  
                  //如果不存在，则递归创建此路径   
                  filePath.getParentFile().mkdirs();  
              }  
              Db db=new Db();
             
              String sql="insert into blog_pictures (p_name,p_date)values('"+uploadFileFileName+"','"+dateTime1+"')";
              db.doSelect(sql);
              db.doInsert(sql);
              System.out.println(uploadFileFileName);   
                
              //将文件保存到硬盘上,Struts2会帮我们自动删除临时文件  
              try {  
                  FileUtils.copyFile(uploadFile, filePath);  
              } catch (IOException e) {  
                  System.out.println("图片上传失败");   
                  e.printStackTrace();  
              }   
          }    
      }  
      return SUCCESS;    
  }
}
