package com.klef.jfsd.exam.Repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.exam.Model.Customer;
@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {

}
