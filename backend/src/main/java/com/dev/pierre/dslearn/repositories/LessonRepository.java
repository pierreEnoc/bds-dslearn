package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Lesson;

public interface LessonRepository extends JpaRepository<Lesson, Long> {

}
