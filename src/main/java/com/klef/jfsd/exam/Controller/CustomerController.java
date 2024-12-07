package com.klef.jfsd.exam.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.exam.Service.CustomerService;
import com.klef.jfsd.exam.Model.Customer;

@RestController
public class CustomerController {

    @Autowired
    private CustomerService customerservice;
    
    @GetMapping("/viewallcustomers")
    public List<Customer> viewallcustomers() {
        return customerservice.displayallCustomers();
    }
}
