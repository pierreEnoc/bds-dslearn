package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long> {

}
