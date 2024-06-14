package com.tues.employees;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.web.client.RestTemplate;

@SpringBootApplication
public class EmployeesApplication {

  public static void main(String[] args) {
    SpringApplication.run(EmployeesApplication.class, args);
  }

  @Bean
  public RestTemplate restTemplate() {
    return new RestTemplate();
  }

}
