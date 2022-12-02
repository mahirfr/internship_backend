package com.mdesign.data.api.controller;

import com.mdesign.data.api.model.EventDateAtAddressInterface;
import com.mdesign.data.api.model.GenderParticipationAtAddress;
import com.mdesign.data.api.model.MDesignQueryResult;
import com.mdesign.data.api.model.NbEventsParticipantsAtAddressInterface;
import com.mdesign.data.api.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QueryController {
    @Autowired
    private QueryService queryService;

    @GetMapping("/queries/event_dates_at_address")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
    public ResponseEntity<Iterable<EventDateAtAddressInterface>> getEventDateAtAddress(
            @RequestParam String start,
            @RequestParam String end,
            @RequestParam String addressName) {
        return new ResponseEntity<>(queryService.getEventDatesAtAddress(start, end, addressName), HttpStatus.OK);

    }

    @GetMapping("/queries/count_events_participation_by_address")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
    public ResponseEntity<Iterable<NbEventsParticipantsAtAddressInterface>> getNbEventsAndParticipantsByAddress(
            @RequestParam String start,
            @RequestParam String end) {
        return new ResponseEntity<>(queryService.getNbEventsAndParticipantsByAddress(start, end), HttpStatus.OK);
    }

    @GetMapping("/queries/count_gender_participation_by_address")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
    public ResponseEntity<Iterable<GenderParticipationAtAddress>> getGenderParticipationByAddress(
            @RequestParam String start,
            @RequestParam String end,
            @RequestParam String gender) {
        return new ResponseEntity<>(queryService.getGenderParticipationByAddress(start, end, gender), HttpStatus.OK);
    }

    @GetMapping("/queries/mdesign")
    @PreAuthorize("hasAnyAuthority('ROLE_ADMIN')")
    public ResponseEntity<Iterable<MDesignQueryResult>> getMDesignResult(
            @RequestParam String start,
            @RequestParam String end) {
        return new ResponseEntity<>(queryService.getMDesignQueryResults(start, end), HttpStatus.OK);
    }
}
