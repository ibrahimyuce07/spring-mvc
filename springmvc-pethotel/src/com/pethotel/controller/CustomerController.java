package com.pethotel.controller;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pethotel.model.Customer;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	
	

	// init binder... ...
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {

		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
		// if string has a white space, trim it to null
	}

	@RequestMapping("/addCustomer")
	public String addCustomer(Model model) {
		model.addAttribute("customer", new Customer());
		return "customer-form";
	}

	@RequestMapping("/processAddForm")
	public String processAddCustomer(@Valid @ModelAttribute("customer") Customer theCustomer,
			BindingResult bindingResult) {
		System.out.println("\n\n\n\n\n");
		System.out.println("Logs: ");
		System.out.println("first name: "+theCustomer.getFirstName());
		System.out.println("last name: "+theCustomer.getLastName());
		System.out.println("pet name: "+theCustomer.getPetName());
		System.out.println("species: "+theCustomer.getPetSpecies());
		System.out.println("date: "+theCustomer.getArrivalDate());
		System.out.println("pet age: "+theCustomer.getPetAge());
		System.out.println("comment: "+theCustomer.getComments());
		System.out.println("\n\n\n\n\n");
		
		if (bindingResult.hasErrors()) {
			return "customer-form";
		} else {
			return "customer-confirm";
		}

	}
}
