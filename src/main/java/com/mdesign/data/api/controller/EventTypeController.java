package com.mdesign.data.api.controller;

import com.mdesign.data.api.model.EventType;
import com.mdesign.data.api.service.EventTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.Optional;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "*")
public class EventTypeController {
    @Autowired
    private EventTypeService eventTypeService;

    @GetMapping("/types")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Iterable<EventType>> getEvents() {
        return new ResponseEntity<>(eventTypeService.getEventTypes(), HttpStatus.OK);
    }

    @GetMapping("/types/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<EventType> getEvent(@PathVariable final Long id) {
        Optional<EventType> eventTypeOption = eventTypeService.getEventType(id);
        if (eventTypeOption.isPresent()) return new ResponseEntity<>(eventTypeOption.get(), HttpStatus.OK);
        else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find EventType with id " + id);
    }

    @PostMapping("/types")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<EventType> saveEvent(@RequestBody EventType eventType) {
        return new ResponseEntity<>(eventTypeService.saveEventType(eventType), HttpStatus.CREATED);
    }

    @DeleteMapping("/types/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> deleteEventType(@PathVariable final Long id) {
        eventTypeService.deleteEventType(id);
        return ResponseEntity.noContent().build();
    }
}
