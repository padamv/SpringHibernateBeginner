package com.luv2code.springboot.thymeleafdemo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.luv2code.springboot.thymeleafdemo.entity.Employee;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
	
	// load employee data
	
	private List<Employee> theEmployees;
	
	@PostConstruct
	private void loadData() {
		
		// create employees
		Employee empl1 = new Employee(1, "Leslie", "Andrews", "leslie@luv2code.com");
		Employee empl2 = new Employee(2, "Emma", "Baumgarten", "emma@luv2code.com");
		Employee empl3 = new Employee(3, "Avani", "Gupta", "avani@luv2code.com");
		
		// create the list
		theEmployees = new ArrayList<>();
		
		// add to the list
		theEmployees.add(empl1);
		theEmployees.add(empl2);
		theEmployees.add(empl3);
	}
	
	// add mapping for "/list"
	
	@GetMapping("/list")
	public String listEmployees(Model theModel) {
		
		//add to the spring model
		theModel.addAttribute("employees", theEmployees);
		
		return "list-employees";
	}
}
