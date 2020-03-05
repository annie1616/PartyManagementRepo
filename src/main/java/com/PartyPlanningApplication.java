package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

@SpringBootApplication
@ComponentScan(basePackages = "com")
public class PartyPlanningApplication {

	@Bean
	public LocalValidatorFactoryBean validator(MessageSource msg) {
		LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();

		bean.setValidationMessageSource(msg);
		
		
		
		

		return bean;

	}

	public static void main(String[] args) {
		SpringApplication.run(PartyPlanningApplication.class, args);
	}

}
