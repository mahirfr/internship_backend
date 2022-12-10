package com.mdesign.data.api.controller;

import com.mdesign.data.api.model.Address;
import com.mdesign.data.api.model.Event;
import com.mdesign.data.api.model.EventType;
import com.mdesign.data.api.model.Person;
import com.mdesign.data.api.service.EventService;
import com.mdesign.data.api.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api")
public class EventController {
    @Autowired
    private EventService eventService;
    @Autowired
    private PersonService personService;

    @GetMapping("/events")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Iterable<Event>> getEvents(@RequestParam(required = false) String date) {
        if (date == null) return new ResponseEntity<>(eventService.getEvents(), HttpStatus.OK);
        else return new ResponseEntity<>(eventService.getEventsByDate(LocalDate.parse(date)), HttpStatus.OK);
    }

    @GetMapping("/events/{id}")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Event> getEvent(@PathVariable final Long id) {
        Optional<Event> eventOption = eventService.getEvent(id);
        if (eventOption.isPresent()) return new ResponseEntity<>(eventOption.get(), HttpStatus.OK);
        else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find Event with id " + id);
    }

    @PostMapping("/events")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Event> saveEvent(@RequestBody Event event) {
        return new ResponseEntity<>(eventService.saveEvent(event), HttpStatus.CREATED);
    }

    @PutMapping("/events/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public Event updateEvent(@RequestBody Event event, @PathVariable final Long id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();

            String name = event.getName();
            if (name != null) currentEvent.setName(name);

            Address address = event.getAddress();
            if (address != null) currentEvent.setAddress(address);

            LocalDate date = event.getDate();
            if (date != null) currentEvent.setDate(date);

            int soldHours = event.getSoldHours();
            if (soldHours != 0) currentEvent.setSoldHours(soldHours);

            LocalTime startTime = event.getStartTime();
            if (startTime != null) currentEvent.setStartTime(startTime);

            LocalTime endTime = event.getEndTime();
            if (endTime != null) currentEvent.setEndTime(endTime);

            String url = event.getUrl();
            if (url != null) currentEvent.setUrl(url);

            EventType type = event.getType();
            if (type != null) currentEvent.setType(type);

            eventService.saveEvent(currentEvent);
            return currentEvent;
        } else {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
        }
    }

    @DeleteMapping("/events/{id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> deleteEvent(@PathVariable final Long id) {
        eventService.deleteEvent(id);
        return ResponseEntity.noContent().build();
    }

    @PostMapping("/events/{id}/contacts")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Event> addContact(@PathVariable final Long id, @RequestBody Person contact) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            personService.savePerson(contact);
            currentEvent.addContact(contact);
            return new ResponseEntity<Event>(eventService.saveEvent(currentEvent), HttpStatus.OK);

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @GetMapping("/events/{id}/contacts")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<List<Person>> getContacts(@PathVariable final Long id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            return new ResponseEntity<>(currentEvent.getContacts(), HttpStatus.OK);

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @DeleteMapping("/events/{id}/contacts/{person_id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> deleteContact(@PathVariable final Long id, @PathVariable final Long person_id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            currentEvent.deleteContact(person_id);
            eventService.saveEvent(currentEvent);
            return ResponseEntity.noContent().build();

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @PostMapping("/events/{id}/participants")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<Event> addParticipant(@PathVariable final Long id, @RequestBody Person participant) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            personService.savePerson(participant);
            currentEvent.addParticipant(participant);
            return new ResponseEntity<Event>(eventService.saveEvent(currentEvent), HttpStatus.OK);

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @GetMapping("/events/{id}/participants")
    @PreAuthorize("hasRole('USER')")
    public ResponseEntity<List<Person>> getParticipants(@PathVariable final Long id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            return new ResponseEntity<>(currentEvent.getParticipants(), HttpStatus.OK);

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @DeleteMapping("/events/{id}/participants/{person_id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> deleteParticipant(@PathVariable final Long id, @PathVariable final Long person_id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            currentEvent.deleteParticipant(person_id);
            eventService.saveEvent(currentEvent);
            return ResponseEntity.noContent().build();

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @GetMapping("/events/{id}/hosts")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<List<Person>> getHosts(@PathVariable final Long id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            return new ResponseEntity<>(currentEvent.getHosts(), HttpStatus.OK);

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }

    @PostMapping("/events/{id}/hosts")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<Event> addHost(@PathVariable final Long id, @RequestBody Person host) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            personService.savePerson(host);
            currentEvent.addHost(host);
            return new ResponseEntity<>(eventService.saveEvent(currentEvent), HttpStatus.OK);

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }



    @DeleteMapping("/events/{id}/hosts/{person_id}")
    @PreAuthorize("hasRole('ADMIN')")
    public ResponseEntity<?> getHost(@PathVariable final Long id, @PathVariable final Long person_id) {
        Optional<Event> optionalEvent = eventService.getEvent(id);
        if (optionalEvent.isPresent()) {
            Event currentEvent = optionalEvent.get();
            currentEvent.deleteHost(person_id);
            eventService.saveEvent(currentEvent);
            return ResponseEntity.noContent().build();

        } else throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Could not find event with id " + id);
    }
}
