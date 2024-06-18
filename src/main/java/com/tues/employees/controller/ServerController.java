package com.tues.employees.controller;

import com.tues.employees.model.Employee;
import com.tues.employees.service.EmployeeService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;
import java.util.List;

@Controller
public class ServerController {

  @Autowired
  EmployeeService employeeService;

  @GetMapping("/index")
  public String index() {
    return "index";
  }

  @GetMapping("/logout")
  public String logout(HttpServletRequest request) throws Exception {
    request.logout();
    return "redirect:/index";
  }

  @GetMapping("/employees")
  public String employees(Principal principal, Model model) {
    List<Employee> employees = employeeService.findAll();
    model.addAttribute("employees", employees);
    model.addAttribute("username", principal.getName());
    return "employees";
  }


}
