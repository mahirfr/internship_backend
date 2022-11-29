package com.mdesign.data.api.repository;

import com.mdesign.data.api.model.Event;
import com.mdesign.data.api.model.EventDateAtAddressInterface;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface EventRepository extends CrudRepository<Event, Long> {
    Iterable<Event> findByDate(LocalDate date);

    @Query(value = "SELECT e.name, e.date from events e INNER JOIN addresses a on e.address_id = a.id WHERE e.date BETWEEN :start AND :end AND a.name = :address_name", nativeQuery = true)
    List<EventDateAtAddressInterface> getEventDateAtAddress(@Param("start") String start, @Param("end") String end, @Param("address_name") String addressName);
}
