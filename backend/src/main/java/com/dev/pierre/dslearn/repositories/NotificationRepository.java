package com.dev.pierre.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dev.pierre.dslearn.entities.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Long> {

}
