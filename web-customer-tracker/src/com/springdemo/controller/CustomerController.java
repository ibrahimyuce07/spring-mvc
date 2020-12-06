package com.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springdemo.entity.Customer;
import com.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// need to inject service to controller
	@Autowired
	private CustomerService customerService;

	// 1 - list customers
	@GetMapping("/list")
	public String listCustomer(Model model) {

		// get customers from dao
		List<Customer> customersList = customerService.getCustomers();

		// add the customers to the model
		model.addAttribute("customers", customersList);

		return "list-customers";
	}
}
