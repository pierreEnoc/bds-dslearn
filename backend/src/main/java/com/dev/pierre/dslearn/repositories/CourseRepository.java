package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Course;

public interface CourseRepository extends JpaRepository<Course, Long> {

}
