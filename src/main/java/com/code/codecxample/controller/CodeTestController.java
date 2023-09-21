package com.code.codecxample.controller;

import com.code.codecxample.model.Message;
import com.code.codecxample.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CodeTestController {
    @Autowired
    private MessageService messageService;
    @GetMapping("/codetest")
    public Message getJsonResponce (){
       Message m= messageService.getMessage();
       return m;
    }
}
