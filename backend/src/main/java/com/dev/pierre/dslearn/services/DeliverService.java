package com.dev.pierre.dslearn.services;

import java.util.LinkedHashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dev.pierre.dslearn.dto.DeliverRevisionDTO;
import com.dev.pierre.dslearn.entities.Deliver;
import com.dev.pierre.dslearn.observers.DeliverRevisionObserver;
import com.dev.pierre.dslearn.repositories.DeliverRepository;

@Service
public class DeliverService {
	
	@Autowired
	private DeliverRepository deliverRepository;
	
	private Set<DeliverRevisionObserver> deliverRevisionObserver = new LinkedHashSet<>();
			
	@PreAuthorize("hasAnyRole('ADMIN', 'INSTRUCTOR')")
	@Transactional
	public void saveRevision(Long id, DeliverRevisionDTO dto) {
		Deliver deliver = deliverRepository.getOne(id);
		deliver.setStatus(dto.getStatus());
		deliver.setFeedback(dto.getFeedback());
		deliver.setCorrectCount(dto.getCorrectCount());
		deliverRepository.save(deliver);	
		for (DeliverRevisionObserver observer : deliverRevisionObserver) {
			observer.onSeveRevision(deliver);
		}
	}
	
	public void subcribeDeliverRevisionObserver(DeliverRevisionObserver observer) {
		deliverRevisionObserver.add(observer);
	}
}
