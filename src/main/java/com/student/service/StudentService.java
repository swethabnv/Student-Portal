package com.student.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.dao.StudentDao;
import com.student.model.Student;

@Service("studentService")
public class StudentService {
	
	@Autowired
	StudentDao studentDao;
	public boolean add(Student st)
	{
      
         return studentDao.add(st);
          
	}

	public ArrayList<Student> search(int key) {
		
		return studentDao.search(key);
	}
	public boolean edit(Student st) {
		
		return studentDao.edit(st);
	}
	public ArrayList<Student> view() {
		
		return studentDao.view();
	}
	
	
	
}
