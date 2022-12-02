package com.mdesign.data.api.repository;

import com.mdesign.data.api.model.*;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface EventRepository extends CrudRepository<Event, Long> {
    Iterable<Event> findByDate(LocalDate date);

    @Query(value = """
            SELECT e.name, e.date from events e
                INNER JOIN addresses a on e.address_id = a.id
                    WHERE e.date BETWEEN :start AND :end AND a.name = :address_name""",
            nativeQuery = true)
    List<EventDateAtAddressInterface> getEventDatesAtAddress(@Param("start") String start, @Param("end") String end, @Param("address_name") String addressName);

    @Query(value = """
            SELECT a.name,
                COUNT(DISTINCT (e.id)) as 'nbEvents',
                COUNT(DISTINCT (ep.participants_id)) as 'nbParticipants'
                FROM events e
                    INNER JOIN addresses a on a.id = e.address_id
                    INNER JOIN events_participants ep on e.id = ep.event_id
                    INNER JOIN persons p on ep.participants_id = p.id
                        WHERE e.date BETWEEN :start AND :end
                        GROUP BY a.name""",
            nativeQuery = true)
    List<NbEventsParticipantsAtAddressInterface> getNbEventsAndParticipantsByAddress(@Param("start") String start, @Param("end") String end);

    @Query(value = """
            SELECT a.name, COUNT(DISTINCT (p.id)) as "genderTotal" FROM events e
                INNER JOIN addresses a on a.id = e.address_id
                INNER JOIN events_participants ep on e.id = ep.event_id
                INNER JOIN persons p on ep.participants_id = p.id
                    WHERE date BETWEEN :start AND :end AND p.gender = :gender
                        GROUP BY a.name""",
            nativeQuery = true)
    List<GenderParticipationAtAddress> getGenderParticipationByAddress(@Param("start") String start, @Param("end") String end, @Param("gender") String gender);

    @Query(value = """
                   WITH fr AS (
                       SELECT a.id,
                              a.name,
                              GROUP_CONCAT(DISTINCT (e.name)) as "events",
                              GROUP_CONCAT(DISTINCT (e.date)) as "dates",
                              COUNT(DISTINCT e.id) as "nbEvents",
                              SUM(e.sold_hours) as soldHours,
                              SUM(HOUR(TIMEDIFF(e.end_time, e.start_time)) + MINUTE(TIMEDIFF(e.end_time, e.start_time)) / 60) as "executedHours"
                                   FROM events e
                                        INNER JOIN addresses a on e.address_id = a.id
                                               WHERE e.date BETWEEN :start AND :end
                                                   GROUP BY a.name
                   ),
                   sr AS (
                       SELECT a.id,
                              a.name,
                              COUNT(DISTINCT (ep.participants_id)) as "nbParticipants",
                              COUNT(DISTINCT (IF(gender = "HOMME", p.id, NULL))) "nbMen",
                              COUNT(DISTINCT (IF(gender = "FEMME", p.id, NULL))) "nbWomen",
                              TIMESTAMPDIFF(YEAR, MIN(p.date_of_birth), SYSDATE()) as "highestAge",
                              TIMESTAMPDIFF(YEAR, MAX(p.date_of_birth), SYSDATE()) as lowestAge
                                    FROM events e
                                        INNER JOIN addresses a on e.address_id = a.id
                                        INNER JOIN events_participants ep on e.id = ep.event_id
                                        INNER JOIN persons p on ep.participants_id = p.id
                                            WHERE e.date BETWEEN :start AND :end
                                                GROUP BY a.name
                   )
                   
                   SELECT fr.name as address, fr.events, fr.dates, fr.nbEvents,
                          sr.nbParticipants,
                          sr.nbMen,
                          sr.nbWomen,
                          sr.highestAge,
                          sr.lowestAge,
                          fr.soldHours,
                          fr.executedHours
                               FROM fr
                                   INNER JOIN sr on fr.id = sr.id
                                       GROUP BY fr.name;
            """, nativeQuery = true)
    List<MDesignQueryResult> getMDesignQuery(@Param("start") String start, @Param("end") String end);
}
