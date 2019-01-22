package com.santa.dao;

import com.santa.models.Customer;

public interface CustomerDao {
	void registerCustomer(Customer customer);
	boolean isEmailUnique(String email);

}
