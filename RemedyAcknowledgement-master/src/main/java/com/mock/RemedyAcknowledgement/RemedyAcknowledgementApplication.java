package com.mock.RemedyAcknowledgement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com.mock" })
public class RemedyAcknowledgementApplication {
	public static void main(String[] args) {
		SpringApplication.run(RemedyAcknowledgementApplication.class, args);
	}
}
