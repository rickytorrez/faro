package com.ericardo.faro.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.faro.models.Booking;

@Repository
public interface BookingRepository extends CrudRepository<Booking, Long> {

}
