package com.mdesign.data.api.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name= "event_types")
public class EventType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, unique = true)
    private String name;
}
