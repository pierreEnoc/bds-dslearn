package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Section;

public interface SectionRepository extends JpaRepository<Section, Long> {

}
