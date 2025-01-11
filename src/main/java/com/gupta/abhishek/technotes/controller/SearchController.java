package com.gupta.abhishek.technotes.controller;

import com.gupta.abhishek.technotes.dto.TopicDTO;
import com.gupta.abhishek.technotes.service.TopicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class SearchController {
    private final TopicService serv;

    @Autowired
    public SearchController(TopicService serv) {
        this.serv = serv;
    }

    @RequestMapping("/search")
    public String searchNote(String query, Model md){
        List<TopicDTO> allTopics = this.serv.searchTopics(query);
        md.addAttribute("allTopics", allTopics);
        return "index";
    }
}
