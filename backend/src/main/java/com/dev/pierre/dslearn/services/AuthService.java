package com.dev.pierre.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dev.pierre.dslearn.entities.User;
import com.dev.pierre.dslearn.repositories.UserRepository;
import com.dev.pierre.dslearn.services.exceptions.ForbiddenException;
import com.dev.pierre.dslearn.services.exceptions.UnauthorizedException;

@Service
public class AuthService {
	
	@Autowired UserRepository userRepository;
	
	@Transactional(readOnly = true)
	public User authenticated() {
		try {
			String userName = SecurityContextHolder.getContext().getAuthentication().getName();
			return userRepository.findByEmail(userName);
		}catch (Exception e) {
			throw new UnauthorizedException("Invalid user");
		}
	}
	
	public void validateSelforAdmin(Long userId) {
		User  user = authenticated();
		if (!user.getId().equals(userId) && !user.hasHole("ROLE_ADMIN")) {
			throw new ForbiddenException("Acccess denied");
		}
	}
}

		
