package com.mdesign.data.api.service;

import com.mdesign.data.api.model.Event;
import com.mdesign.data.api.repository.EventRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.Optional;

@Data
@Service
public class EventService {

    private final EventRepository eventRepository;

    public EventService(EventRepository eventRepository) {
        this.eventRepository = eventRepository;
    }

    public Optional<Event> getEvent(final Long id) {
        return eventRepository.findById(id);
    }

    public Iterable<Event> getEvents() {
        return eventRepository.findAll();
    }

    public Iterable<Event> getEventsByDate(LocalDate date) {
        return eventRepository.findByDate(date);
    }

    public void deleteEvent(final Long id) {
        eventRepository.deleteById(id);
    }

    public Event saveEvent(Event event) {
        return eventRepository.save(event);
    }
}
