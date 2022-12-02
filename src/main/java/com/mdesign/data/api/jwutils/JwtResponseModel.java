package com.mdesign.data.api.jwutils;

import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

@Data
public class JwtResponseModel implements Serializable {
    @Serial
    private static final long serialVersionUID = 1L;
    private final String token;

    public JwtResponseModel(String token) {
        this.token = token;
    }
}
