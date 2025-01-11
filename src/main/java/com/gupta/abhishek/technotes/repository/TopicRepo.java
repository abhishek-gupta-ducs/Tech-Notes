package com.gupta.abhishek.technotes.repository;

import com.gupta.abhishek.technotes.dto.TopicDTO;
import com.gupta.abhishek.technotes.model.Topic;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository //this is not mandatory as we are extending JpaRepository
public interface TopicRepo extends JpaRepository<Topic, Integer> {
    @Query("SELECT new com.gupta.abhishek.technotes.dto.TopicDTO(t.topicId, t.topicTitle, t.topicDescription) FROM Topic t")
    List<TopicDTO> findAllTopicForHome();
    @Query("SELECT new com.gupta.abhishek.technotes.dto.TopicDTO(t.topicId, t.topicTitle, t.topicDescription) " +
            "FROM Topic t " +
            "WHERE t.topicTitle ILIKE %:query% " +
            "OR t.topicDescription ILIKE %:query% " +
            "OR t.topicLaymanExplanation ILIKE %:query% " +
            "OR t.topicUseCases ILIKE %:query%")
    List<TopicDTO> findSearchedTopicForHome(@Param("query") String query);
}