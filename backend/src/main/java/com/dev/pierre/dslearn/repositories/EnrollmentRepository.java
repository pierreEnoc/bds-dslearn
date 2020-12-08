package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Enrollment;

public interface EnrollmentRepository extends JpaRepository<Enrollment, Long> {

}
