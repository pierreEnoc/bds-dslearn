package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Long> {

}
