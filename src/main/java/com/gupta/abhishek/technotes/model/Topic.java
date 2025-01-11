package com.gupta.abhishek.technotes.model;

import jakarta.persistence.*;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Scope("prototype")
@Entity
public class Topic {

    @Id @GeneratedValue(strategy = GenerationType.AUTO) //it is not important to pass strategy, this will be a default strategy
    private int topicId;
    private String topicTitle;
    @Column(columnDefinition = "TEXT")
    private String topicDescription;
    @Column(columnDefinition = "TEXT")
    private String topicLaymanExplanation;
    @Column(columnDefinition = "TEXT")
    private String topicUseCases;

    public int getTopicId() {
        return topicId;
    }

    public void setTopicId(int topicId) {
        this.topicId = topicId;
    }

    public String getTopicTitle() {
        return topicTitle;
    }

    public void setTopicTitle(String topicTitle) {
        this.topicTitle = topicTitle;
    }

    public String getTopicDescription(){
        return topicDescription;
    }

    public String[] getTopicDescriptionArr() {
        return topicDescription.split("\n");
    }

    public void setTopicDescription(String topicDescription) {
        this.topicDescription = topicDescription.strip();
    }

    public String getTopicLaymanExplanation() {
        return topicLaymanExplanation;
    }

    public String[] getTopicLaymanExplanationArr() {
        return topicLaymanExplanation.split("\n");
    }

    public void setTopicLaymanExplanation(String topicLaymanExplanation) {
        this.topicLaymanExplanation = topicLaymanExplanation.strip();
    }

    public String getTopicUseCases() {
        return topicUseCases;
    }

    public String[] getTopicUseCasesArr() {
        return topicUseCases.split("\n");
    }

    public void setTopicUseCases(String topicUseCases) {
        this.topicUseCases = topicUseCases.strip();
    }

    @Override
    public String toString() {
        return "Topic{" +
                "topicId=" + topicId +
                ", topicTitle='" + topicTitle + '\'' +
                ", topicDescription='" + topicDescription + '\'' +
                ", topicLaymanExplanation='" + topicLaymanExplanation + '\'' +
                ", topicUseCases='" + topicUseCases + '\'' +
                '}';
    }
}