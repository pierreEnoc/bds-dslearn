package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long> {

}
