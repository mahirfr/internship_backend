package com.mdesign.data.api.controller;

import com.mdesign.data.api.model.EventDateAtAddressInterface;
import com.mdesign.data.api.service.QueryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class QueryController {
    @Autowired
    private QueryService queryService;

    @GetMapping("/queries/event_date_at_address")
    public ResponseEntity<Iterable<EventDateAtAddressInterface>> getAddresses(
            @RequestParam String start,
            @RequestParam String end,
            @RequestParam String addressName) {
        return new ResponseEntity<>(queryService.getEventDateAtAddress(start, end, addressName), HttpStatus.OK);

    }
}
