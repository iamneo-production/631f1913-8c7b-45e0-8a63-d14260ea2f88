package com.examly.springapp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//@ComponentScan("com.examly")
public class SpringappApplication {

	public static void main(String[] args) {
        System.out.println("Hello world");
        System.out.println("Latest changes");
		SpringApplication.run(SpringappApplication.class, args);
	}
}
