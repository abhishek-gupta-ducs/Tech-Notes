package com.gupta.abhishek.technotes.controller;

import com.gupta.abhishek.technotes.model.Topic;
import com.gupta.abhishek.technotes.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Arrays;

@Controller
public class SaveNoteController {
    private final TopicService serv;

    @Autowired
    SaveNoteController(TopicService serv){
        this.serv = serv;
    }

    @RequestMapping("/saveNote")
    public String saveNote(@ModelAttribute("topic") Topic topic){
        if (this.serv.updateTable(topic)){
            System.out.println("Topic updated into DB");
        } else {
            System.out.println("Failed to update topic into DB");
        }
        return "viewNote";
    }
}
