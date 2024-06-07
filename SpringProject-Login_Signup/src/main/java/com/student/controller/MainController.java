package com.student.controller;

import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.student.model.Student_Crud;
import com.student.repository.Repo;

@Controller
public class MainController {

	@Autowired
	Repo r;
	
	@RequestMapping("/")
	public String index()
	{
		
		return "index";
	}
	
	
	
	@RequestMapping("/home")
	public String home(@ModelAttribute Student_Crud sc)
	{
		
		r.save(sc);
		return "login";
	}
	
	
	@RequestMapping("/login")
	public String home(@RequestParam String email,@RequestParam String password)
	{
		Student_Crud st=r.findByEmail(email);
		
		if(st.getEmail().equalsIgnoreCase(email) && st.getPassword().equals(password))
		{
			return "result";
			
		}
		else
		{
			return "login";
		}
		
		
	}
	
	@RequestMapping("/fetch")
	public String datafetch(Model data)
	{
	
		List<Student_Crud> al=r.findAll();
		System.out.println(al);
		
		data.addAttribute("e_data",al);
		
		return "datafetch";
	}
	
	
	@RequestMapping("/Delete/{id}")
	public String delete(@PathVariable int id)
	{
		r.deleteById(id);
		return "redirect:/fetch";
	}
	
	
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id,Model m)
	{
		Student_Crud ob=r.findById(id).orElse(null);
		
		m.addAttribute("data", ob);
		
		return "edit";
	}
	
	@RequestMapping("edit/{id}")
	public String update(@PathVariable int id,@ModelAttribute Student_Crud e)
	{
		Student_Crud ob=r.findById(id).orElse(null);
		
		if(ob!=null)
		{
			ob.setName(e.getName());
			
			ob.setEmail(e.getEmail());
			ob.setPassword(e.getPassword());
		    r.save(ob);
			
		}
		return "redirect:/fetch";
	}
	
}
