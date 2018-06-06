package com.ericardo.faro.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.faro.models.Reservation;

@Repository
public interface ReservationRepository extends CrudRepository<Reservation, Long> {

}
