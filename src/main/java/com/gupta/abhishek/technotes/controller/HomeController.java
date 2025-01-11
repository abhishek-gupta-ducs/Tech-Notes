package com.gupta.abhishek.technotes.controller;
import com.gupta.abhishek.technotes.dto.TopicDTO;
import com.gupta.abhishek.technotes.model.Topic;
import com.gupta.abhishek.technotes.service.TopicService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.List;

@Controller
public class HomeController {

    private final TopicService serv;

    @Autowired
    public HomeController(TopicService serv) {
        this.serv = serv;
    }

    @RequestMapping("/")
    public String home(Model md){
        List<TopicDTO> allTopics = this.serv.getAllTopics();
        md.addAttribute("allTopics", allTopics);
        return "index";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }

    @RequestMapping("/addNewNote")
    public String addNewNote(){
//        return "addNewNote";
        return "addNewNoteV2";
    }

    @RequestMapping("/openNote")
    public String openNote(HttpServletRequest req, Model md) {
        int topicId = Integer.parseInt(req.getParameter("id"));
        md.addAttribute("topic", this.serv.getTopicByID(topicId));
        return "viewNote";
    }

    @RequestMapping("/deleteNote")
    public String deleteNote(HttpServletRequest req) {
        int topicId = Integer.parseInt(req.getParameter("id"));
        this.serv.delTopicByID(topicId);
        return "redirect:/";
    }

    @RequestMapping("/editNote")
    public String editNote(HttpServletRequest req, Model md){
        int topicId = Integer.parseInt(req.getParameter("id"));
        Topic currTopic = this.serv.getTopicByID(topicId);
        md.addAttribute("topic", currTopic);
        return "editNoteV2";
    }

}