package com.HMS.Hospital.Management.System;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
@ComponentScan("com")
public class HospitalManagementSystemApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(HospitalManagementSystemApplication.class, args);
		
		System.out.println("Hospital Management System");
		
	}

}
