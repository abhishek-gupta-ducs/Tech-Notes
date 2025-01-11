package com.gupta.abhishek.technotes.dto;


public class TopicDTO {
    private int topicId;
    private String topicTitle;
    private String topicDescription;

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

    public String getTopicDescription() {
        return topicDescription;
    }

    public void setTopicDescription(String topicDescription) {
        this.topicDescription = topicDescription;
    }

    public TopicDTO(int topicId, String topicTitle, String topicDescription) {
        this.topicId = topicId;
        this.topicTitle = topicTitle;
        if(topicDescription.length() > 150){
            this.topicDescription = topicDescription.substring(0,151).concat("...");
        } else {
            this.topicDescription = topicDescription;
        }
    }
}
