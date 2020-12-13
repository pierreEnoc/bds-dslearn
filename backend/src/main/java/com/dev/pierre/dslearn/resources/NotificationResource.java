package com.dev.pierre.dslearn.resources;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.dev.pierre.dslearn.dto.NotificationDTO;
import com.dev.pierre.dslearn.services.NotificationService;


@RestController
@RequestMapping(value="/notifications")
public class NotificationResource {
	
	@Autowired
	private NotificationService notificatinService;
	
	@GetMapping
	public ResponseEntity<Page<NotificationDTO>> findAll(
			@RequestParam(value = "page", defaultValue = "0") Integer page,
			@RequestParam(value = "size", defaultValue = "12") Integer size
			
			) {
		PageRequest pageRequest = PageRequest.of(page, size);
		
		Page<NotificationDTO>  list = notificatinService.notificationsForCurrentUser(pageRequest);
		return ResponseEntity.ok().body(list);
	}

}