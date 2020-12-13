package com.dev.pierre.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.dev.pierre.dslearn.dto.NotificationDTO;
import com.dev.pierre.dslearn.entities.Notification;
import com.dev.pierre.dslearn.entities.User;
import com.dev.pierre.dslearn.repositories.NotificationRepository;

@Service
public class NotificationService {
	
	@Autowired
	private NotificationRepository notificationRepository;
	
	@Autowired
	private AuthService authService;
	
	public Page<NotificationDTO> notificationsForCurrentUser(boolean unreadOnly, Pageable pageable) {
		User user = authService.authenticated();
		Page<Notification> page = notificationRepository.find(user, unreadOnly, pageable);
		return page.map(x -> new NotificationDTO(x));
		
	}

}
