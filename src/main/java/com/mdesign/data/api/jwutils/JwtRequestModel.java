package com.mdesign.data.api.jwutils;

import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

@Data
public class JwtRequestModel implements Serializable {
    @Serial
    private static final long serialVersionUID = 2636936156391265891L;

    private String username;
    private String password;

    public JwtRequestModel() {}

    public JwtRequestModel(String username, String password) {
        super();
        this.username = username;
        this.password = password;
    }
}
