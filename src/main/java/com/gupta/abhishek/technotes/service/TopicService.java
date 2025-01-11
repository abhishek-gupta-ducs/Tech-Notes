package com.gupta.abhishek.technotes.service;

import com.gupta.abhishek.technotes.dto.TopicDTO;
import com.gupta.abhishek.technotes.model.Topic;
import com.gupta.abhishek.technotes.repository.TopicRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class TopicService {
    private final TopicRepo repo;

    @Autowired
    public TopicService(TopicRepo repo) {
        this.repo = repo;
    }

    public boolean updateTable(Topic newTopic){
        Topic savedTopic = this.repo.save(newTopic);
        return savedTopic.getTopicId() != 0;
    }

    public List<TopicDTO> getAllTopics(){
        return this.repo.findAllTopicForHome();
    }

    public Topic getTopicByID(int id){
        Optional<Topic> currTopic = this.repo.findById(id);
        return currTopic.orElse(new Topic());
    }

    public void delTopicByID(int topicId) {
        this.repo.deleteById(topicId);
    }

    public List<TopicDTO> searchTopics(String query) {
        return this.repo.findSearchedTopicForHome(query);
    }
}