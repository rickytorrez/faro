package com.ericardo.faro.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ericardo.faro.models.Message;

@Repository
public interface MessageRepository extends CrudRepository<Message, Long> {

}
