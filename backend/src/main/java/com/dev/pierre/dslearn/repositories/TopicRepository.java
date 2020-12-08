package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Topic;

public interface TopicRepository extends JpaRepository<Topic, Long> {

}
