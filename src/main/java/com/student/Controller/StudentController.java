package com.student.Controller;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.student.model.Student;
import com.student.service.StudentService;

@Controller
public class StudentController {
	
	@Autowired
	StudentService studentService;
	
	@RequestMapping("/add")
	
 public ModelAndView add(Student st,HttpServletRequest request,HttpServletResponse response)
	{
		
		String won="Data Inserted Successfully";
		String loss="Oops!Insertion failed,Please try again";
		ModelAndView mv=new ModelAndView();
		
		if (studentService.add(st))
		{
		mv.setViewName("Welcome.jsp");
		mv.addObject("result",won);
		}		
		else
		{
			mv.setViewName("Welcome.jsp");
			mv.addObject("result",loss);
		}
		
		return mv;

	}
	
	
	@RequestMapping("/search")
	
	 public ModelAndView search(@RequestParam("searchkey") int key,HttpServletRequest request,HttpServletResponse response)
		{
				
			
			ModelAndView mv=new ModelAndView();
			
			ArrayList<Student> studentList=(ArrayList<Student>) studentService.search(key);
			
			mv.setViewName("Records.jsp");
			
				mv.addObject("studentList",studentList);
			
			
			return mv;

		}
	
	@RequestMapping("/view")
	
	 public ModelAndView view(HttpServletRequest request,HttpServletResponse response)
		{
	
			
			
			ModelAndView mv=new ModelAndView();
			
			ArrayList<Student> studentList=(ArrayList<Student>) studentService.view();
			
			mv.setViewName("result.jsp");
			
				mv.addObject("studentList",studentList);
			
			
			return mv;

		}
	
	@RequestMapping("/edit")
	
	 public ModelAndView edit(Student st,HttpServletRequest request,HttpServletResponse response)
		{
		String won="Data Updated Successfully";
		String loss="Oops!,Update record failed,Please try again";
			
			ModelAndView mv=new ModelAndView();
			
			if (studentService.edit(st))
			{
				mv.setViewName("view.jsp");
				mv.addObject("result",won);
			}		
			else
			{
				mv.setViewName("view.jsp");
				mv.addObject("result",loss);
			}
			
			return mv;

		}
	
}
