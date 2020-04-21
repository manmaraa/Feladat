package com.feladat;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.*")
public class FeladatApplication {

	public static void main(String[] args) {
		SpringApplication.run(FeladatApplication.class, args);
	}

}
