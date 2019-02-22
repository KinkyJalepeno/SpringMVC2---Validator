package com.luv2code.springdemo.mvc;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @RequestMapping("processForm")
    public String showForm(){

        return "customer-confirmation";
    }


}