package com.mdesign.data.api.model;

public interface MDesignQueryResult {
    int getId();
    String getType();
    String getAddresses();
    String getEvents();
    String getDates();
    int getNbEvents();
    int getNbParticipants();
    int getNbNewParticipants();
    int getNbMen();
    int getNbWomen();
    int getLowestAge();
    int getHighestAge();
    double getSoldHours();
    double getExecutedHours();
}
