package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
@RequestMapping("/*")
@AllArgsConstructor

public class MainController {
	
	
	@GetMapping("/Main")
	public void register() {
		
	}
	
	@GetMapping("/company")
	public void company() {
		
		
	}
	
	
	
	

}


