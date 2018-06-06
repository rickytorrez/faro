package com.ericardo.faro.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.faro.models.Admin;

@Repository
public interface AdminRepository extends CrudRepository<Admin, Long> {
	Admin findByEmail(String email);
}
