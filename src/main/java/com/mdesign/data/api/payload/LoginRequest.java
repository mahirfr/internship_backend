package com.mdesign.data.api.payload;

import lombok.Data;

import java.io.Serial;
import java.io.Serializable;

@Data
public class LoginRequest implements Serializable {
    @Serial
    private static final long serialVersionUID = 2636936156391265891L;

    private String username;
    private String password;

    public LoginRequest() {}

    public LoginRequest(String username, String password) {
        super();
        this.username = username;
        this.password = password;
    }
}
