package com.ericardo.faro.repositories;

import org.springframework.data.repository.CrudRepository;

import com.ericardo.faro.models.Guest;

public interface GuestRepository extends CrudRepository<Guest, Long> {

}
