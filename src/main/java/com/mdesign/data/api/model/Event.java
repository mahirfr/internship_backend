package com.mdesign.data.api.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table(name= "events", uniqueConstraints = @UniqueConstraint(name = "UniqueEvent",
        columnNames = { "name", "date" }))
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String name;

    @ManyToOne(optional = false, targetEntity = EventType.class)
    @JoinColumn(name = "type_id", nullable = false, referencedColumnName = "id")
    private EventType type;

    @ManyToOne(optional = false, targetEntity = Address.class)
    @JoinColumn(name = "address_id", nullable = false, referencedColumnName = "id")
    private Address address;

    @Column(nullable = false)
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern ="yyyy-MM-dd")
    private LocalDate date;

    @Column(nullable = false)
    private int soldHours;

    @Column(name = "start_time")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "HH:mm")
    private LocalTime startTime;

    @Column(name = "end_time")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "HH:mm")
    private LocalTime endTime;

    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    private List<Person> contacts = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    private List<Person> participants = new ArrayList<>();

    @ManyToMany(cascade = CascadeType.PERSIST, fetch = FetchType.LAZY)
    private List<Person> hosts = new ArrayList<>();

    private String url;

    public List<Person> getContacts() {
        return this.contacts;
    }

    public void addContact(Person person) {
        this.contacts.add(person);
    }

    public void deleteContact(final Long id) {
        int indexToDelete = -1;
        for (int i=0; i<contacts.size(); i++) {
            if (contacts.get(i).getId().equals(id)) {
                indexToDelete = i;
            }
        }
        if (indexToDelete != -1) {
            contacts.remove(indexToDelete);
        }
    }

    public List<Person> getParticipants() {
        return this.participants;
    }

    public void addParticipant(Person person) {
        this.participants.add(person);
    }

    public void deleteParticipant(final Long id) {
        int indexToDelete = -1;
        for (int i=0; i<participants.size(); i++) {
            if (participants.get(i).getId().equals(id)) {
                indexToDelete = i;
            }
        }
        if (indexToDelete != -1) {
            participants.remove(indexToDelete);
        }
    }

    public void addHost(Person person) {
        this.hosts.add(person);
    }

    public void deleteHost(final Long id) {
        int indexToDelete = -1;
        for (int i=0; i<hosts.size(); i++) {
            if (hosts.get(i).getId().equals(id)) {
                indexToDelete = i;
            }
        }
        if (indexToDelete != -1) {
            hosts.remove(indexToDelete);
        }
    }
}
