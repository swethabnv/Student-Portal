package com.student.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;


import com.student.model.Student;




@Repository("studentDao")
public class StudentDao {
	

	Connect_db dbConn=new Connect_db();
	Connection con=dbConn.getConnection();
	ResultSet rst;
	PreparedStatement stmt;
	
	public boolean add(Student st)
	
	{ 
		boolean check = false;
		java.util.Date utilStartDate = st.getDate();
		java.sql.Date sqlStartDate = new java.sql.Date(utilStartDate.getTime());
		
		try {
			stmt = con.prepareStatement("insert into student values(?, ?,?,?,?,?)");
		
		System.out.println("executed create statement");
		
		stmt.setInt(1,st.getYear());
		stmt.setString(2,st.getCampus());
		stmt.setInt(3,st.getSid());
		//stmt.setDate(4,);
		stmt.setInt(4, st.getGrade());
		stmt.setString(5,st.getName());
		stmt.setDate(6,sqlStartDate);
		
		
		
		 int i=stmt.executeUpdate();
		 
		 if(i>0)
		 {
			 System.out.println("everything inserted");
			 System.out.println("the student name is in the DAO class"+st.getName());
			 check= true;
			 
		 }
		 else
		 {
			 check= false;
		 }
		
		
		 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         return check;
	}


	public ArrayList<Student> search(int key) {
		// TODO Auto-generated method stub
		 ArrayList<Student> studentList = new ArrayList<Student>();
		
		try {
			stmt = con.prepareStatement(
					"Select * From student where gradelevel=?");
			stmt.setInt(1,key);
			rst = stmt.executeQuery();
			
				while (rst.next()) {
					
					Student student = new Student();
					student.setYear(rst.getInt(1));
					student.setCampus(rst.getString(2));
					student.setSid(rst.getInt(3));
					student.setGrade(rst.getInt(4));
					
					student.setName(rst.getString(5));
					student.setDate(rst.getDate(6));
					studentList.add(student);
		} }catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
				                                     
  
		
		return studentList;
	}


	public boolean edit(Student st) {
		java.util.Date utilStartDate = st.getDate();
		java.sql.Date sqlStartDate = new java.sql.Date(utilStartDate.getTime());
		boolean check=false;
		try {
		stmt = con.prepareStatement
			    ("UPDATE student SET schoolyr = ?, campus = ?, gradelevel = ?, name = ? ,entrydate = ? WHERE studentid = ?");

			stmt.setInt(1,st.getYear());
			stmt.setString(2,st.getCampus());
			stmt.setInt(3,st.getGrade());
			
			stmt.setString(4, st.getName());
			stmt.setDate(5,sqlStartDate);	
			stmt.setInt(6,st.getSid());
		
			 int i=stmt.executeUpdate();
			 
			 if(i>0)
			 {
				 System.out.println("everything inserted");
				 System.out.println("the student name is in the DAO class"+st.getName());
				 check= true;
				 
			 }
			 else
			 {
				 check= false;
			 }
			
		
		System.out.println("everything updated");
		 System.out.println("the student name is in the DAO class"+st.getName());
		 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
          return check;
	}


	public ArrayList<Student> view() {
		
ArrayList<Student> studentList = new ArrayList<Student>();
		
		try {
			stmt = con.prepareStatement(
					"Select * From student ");
		
			rst = stmt.executeQuery();
			
				while (rst.next()) {
					
					Student student = new Student();
					student.setYear(rst.getInt(1));
					student.setCampus(rst.getString(2));
					student.setSid(rst.getInt(3));
					student.setGrade(rst.getInt(4));
					
					student.setName(rst.getString(5));
					student.setDate(rst.getDate(6));
					studentList.add(student);
		} }catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
				                                     
  
		
		return studentList;
	}

}
