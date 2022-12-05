package com.mdesign.data.api.model;

import java.util.Optional;

public interface MDesignQueryResult {
    String getAddress();
    String getEvents();
    String getDates();
    int getNbEvents();
    int getNbParticipants();
    int getNbMen();
    int getNbWomen();
    int getLowestAge();
    int getHighestAge();
    double getSoldHours();
    double getExecutedHours();
}
