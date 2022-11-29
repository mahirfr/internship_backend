package com.mdesign.data.api.service;

import com.mdesign.data.api.model.EventDateAtAddressInterface;
import com.mdesign.data.api.repository.EventRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Data
@Service
public class QueryService {

    @Autowired
    private EventRepository eventRepository;

    public Iterable<EventDateAtAddressInterface> getEventDateAtAddress(String start, String end, String addressName) {
        return eventRepository.getEventDateAtAddress(start, end, addressName);
    }
}
