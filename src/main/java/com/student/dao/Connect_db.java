package com.student.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connect_db {
	
	  public Connection getConnection()
	    {
	        Connection con=null;
	        try
	        {
	        	Class.forName("com.mysql.jdbc.Driver");
				 con=DriverManager.getConnection(  
						"jdbc:Mysql://localhost:3306/region20","root","admin");
	        }
	        catch(Exception e)
	        {
	            e.printStackTrace();
	        }

	        return con;        
	    }

}
