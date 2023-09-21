package com.code.codecxample.service;

import com.code.codecxample.model.Message;
import org.springframework.stereotype.Service;

@Service
public class MessageService {

    public Message getMessage() {
        Message m = new Message();
        m.setMessage("Hello World");
        m.setId(1);
        return m;
    }

}
