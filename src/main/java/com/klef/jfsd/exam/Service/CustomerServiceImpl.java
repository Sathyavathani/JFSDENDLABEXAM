package com.klef.jfsd.exam.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.exam.Model.Customer;
import com.klef.jfsd.exam.Repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository repository;

	@Override
	public List<Customer> displayallCustomers() {
		
		return (List<Customer>) repository.findAll();
	}

}
