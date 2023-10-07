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

//    TODO: add a query for new participants
    @Query(value = """
                   WITH fr AS (
                               SELECT et.id as id,
                                      et.name as type,
                                      GROUP_CONCAT(DISTINCT (a.name)) as "addresses",
                                      GROUP_CONCAT(DISTINCT (e.name)) as "events",
                                      GROUP_CONCAT(DISTINCT (e.date)) as "dates",
                                      COUNT(DISTINCT e.id) as "nbEvents",
                                      SUM(e.sold_hours) as soldHours,
                                      SUM(HOUR(TIMEDIFF(e.end_time, e.start_time)) + MINUTE(TIMEDIFF(e.end_time, e.start_time)) / 60) as "executedHours"
                                           FROM events e
                                                INNER JOIN addresses a on e.address_id = a.id
                                                INNER JOIN event_types et on e.type_id = et.id
                                                       WHERE e.date BETWEEN :start AND :end
                                                           GROUP BY et.name
                               ),
                               sr AS (
                                   SELECT et.id,
                                          COUNT(DISTINCT (ep.participants_id)) as "nbParticipants",
                                          COUNT(DISTINCT (IF(gender = "HOMME", p.id, NULL))) "nbMen",
                                          COUNT(DISTINCT (IF(gender = "FEMME", p.id, NULL))) "nbWomen",
                                          TIMESTAMPDIFF(YEAR, MIN(p.date_of_birth), SYSDATE()) as "highestAge",
                                          TIMESTAMPDIFF(YEAR, MAX(p.date_of_birth), SYSDATE()) as lowestAge
                                                FROM events e
                                                    INNER JOIN event_types et on e.type_id = et.id
                                                    INNER JOIN events_participants ep on e.id = ep.event_id
                                                    INNER JOIN persons p on ep.participants_id = p.id
                                                        WHERE e.date BETWEEN :start AND :end
                                                            GROUP BY et.id
                               ),
                               tr AS (
                                    SELECT e.type_id,
                                           COUNT(DISTINCT ep.participants_id) AS "nbNewParticipants" 
                                    FROM events e
                                        INNER JOIN events_participants ep ON e.id = ep.event_id
                                            WHERE e.date BETWEEN :start AND :end
                                            AND ep.participants_id NOT IN (
                                               SELECT ep2.participants_id
                                               FROM events e2
                                                    INNER JOIN events_participants ep2 ON e2.id = ep2.event_id
                                                        WHERE e2.date BETWEEN '2000-01-01' AND DATE_SUB(:start, INTERVAL 1 DAY)
                                            )
                                            GROUP BY e.type_id
                               )
                               SELECT ROW_NUMBER() OVER() as id, fr.type, fr.addresses, fr.events, fr.dates, fr.nbEvents,
                                      COALESCE(sr.nbParticipants, 0) as nbParticipants,
                                      COALESCE(tr.nbNewParticipants, 0) AS nbNewParticipants,
                                      COALESCE(sr.nbMen, 0) as nbMen,
                                      COALESCE(sr.nbWomen, 0) as nbWomen,
                                      COALESCE(sr.highestAge, 0) as highestAge,
                                      COALESCE(sr.lowestAge, 0) as lowestAge,
                                      fr.soldHours,
                                      fr.executedHours
                                           FROM fr
                                               LEFT OUTER JOIN sr on fr.id = sr.id
                                               LEFT OUTER JOIN tr on tr.type_id = sr.id
                                                   GROUP BY fr.type;
            """, nativeQuery = true)
    List<MDesignQueryResult> getMDesignQuery(@Param("start") String start, @Param("end") String end);
}
