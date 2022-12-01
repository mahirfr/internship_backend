package com.mdesign.data.api.service;

import com.mdesign.data.api.model.EventDateAtAddressInterface;
import com.mdesign.data.api.model.GenderParticipationAtAddress;
import com.mdesign.data.api.model.MDesignQueryResult;
import com.mdesign.data.api.model.NbEventsParticipantsAtAddressInterface;
import com.mdesign.data.api.repository.EventRepository;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Data
@Service
public class QueryService {

    @Autowired
    private EventRepository eventRepository;

    public Iterable<EventDateAtAddressInterface> getEventDatesAtAddress(String start, String end, String addressName) {
        return eventRepository.getEventDatesAtAddress(start, end, addressName);
    }

    public Iterable<NbEventsParticipantsAtAddressInterface> getNbEventsAndParticipantsByAddress(String start, String end) {
        return eventRepository.getNbEventsAndParticipantsByAddress(start, end);
    }

    public Iterable<GenderParticipationAtAddress> getGenderParticipationByAddress(String start, String end, String gender) {
        return eventRepository.getGenderParticipationByAddress(start, end, gender);
    }

    public Iterable<MDesignQueryResult> getMDesignQueryResults(String start, String end) {
        return eventRepository.getMDesignQuery(start, end);
    }
}
