package com.mdesign.data.api.service;

import com.mdesign.data.api.model.EventType;
import com.mdesign.data.api.repository.EventTypeRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Data
@Service
public class EventTypeService {
    @Autowired
    private EventTypeRepository eventTypeRepository;

    public Optional<EventType> getEventType(final Long id) {
        return eventTypeRepository.findById(id);
    }

    public Iterable<EventType> getEventTypes() {
        return eventTypeRepository.findAll();
    }

    public void deleteEventType(final Long id) {
        eventTypeRepository.deleteById(id);
    }

    public EventType saveEventType(EventType eventType) {
        return eventTypeRepository.save(eventType);
    }
}
