package com.pethotel.model;


import java.util.ArrayList;
import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class Customer {

	@NotNull(message ="is required" )
	@Size(min = 1, message ="is required")
	private String firstName;

	@NotNull(message ="is required" )
	@Size(min = 1, message ="is required")
	private String lastName;

	@NotNull(message ="is required" )
	@Size(min = 1, message ="is required")
	private String petName;

	@NotNull(message ="is required" )
	@Size(min = 1, message ="is required")
	
	private String petSpecies;
	private ArrayList<String> petSpeciesList;
	

	@NotNull(message ="is required" )
	@Min(value = 0, message = "must be greater than or equal to zero")
	private Integer petAge;

	@Pattern(regexp = "^[a-zA-Z0-9]{11}", message = "only 11 chars/digits")
	private String phoneNumber;

	private String mail;
	
	private String comments;

 	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date arrivalDate;
	
	public Customer() {
		petSpeciesList = new ArrayList<>();
		
		petSpeciesList.add("Kedi");
		petSpeciesList.add("Köpek");
		petSpeciesList.add("Kuş");
		petSpeciesList.add("Sürüngen");
		
	}

	
	
	
}
