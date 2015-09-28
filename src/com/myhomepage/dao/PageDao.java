package com.myhomepage.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PageDao {
	private Connection conn ;  
    private PreparedStatement pstmt ;  
    private ResultSet rs ;  
    private static final String DRIVER = "com.mysql.jdbc.Driver" ;  
    private static final String URL =  "jdbc:mysql://127.0.0.1:3306/myblog?user=root&password=&useUnicode=true&amp&characterEncoding=UTF8&zeroDateTimeBehavior=convertToNull";     

      
    private Article article ;  
      
    //数据库连接  
    public synchronized Connection getConnection () {  
        try {  
            Class.forName (DRIVER) ;  
            conn = DriverManager.getConnection (URL) ;  
        } catch (ClassNotFoundException e) {  
            e.printStackTrace () ;  
            return null ;  
        } catch (SQLException e) {  
            e.printStackTrace () ;  
            return null ;  
        }   
        return conn ;  
    }  
    
  //分页查询  
  public List<Article> queryByPage (int pageSize, int pageNow) {  
    List<Article> list = new ArrayList<Article> () ;  
    try {  
      if (this.getConnection()!=null && pageSize>0 && pageNow>0) {  
          pstmt = this.getConnection().prepareStatement(  
            "select * from blog_contents order by stu_id limit "+(pageNow*pageSize-pageSize)+","+pageSize  
          );  
          rs = pstmt.executeQuery () ;  
            
          while (rs.next()) {  
        	  article  = new Article () ;  
        	  
        	  article.setTitle (rs.getString(2)) ;  
        	  article.setTime (rs.getString(3)) ;  
        	  article.setContent (rs.getString(4)) ; 
        	  article.setAuthor (rs.getString(5)) ;
        	  article.setType(rs.getString(6));
              list.add (article) ;  
          }  
      }  
    } catch(SQLException e) {  
        e.printStackTrace() ;  
    }  
    return list ;  
  }}  