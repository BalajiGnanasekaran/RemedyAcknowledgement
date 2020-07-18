package com.mock.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mock.model.User;
import com.mock.repository.UserRepository;

/**
 * @author kumaran_m
 * 
 *         This class contains UserService method Implementation
 *
 */

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	UserRepository userRepository;

	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.mock.service.UserService#saveRegistration(com.mock.model.User)
	 * 
	 * this method is for saving users
	 */
	@Override
	public void saveRegistration(User user) {
		user.setUserPassword(passwordEncoder.encode(user.getUserPassword()));
		user.setEnabled(true);

		User user1 = userRepository.findByUserName(user.getUserName());
		if (user1 == null) {
			userRepository.save(user);
		} else {
			throw new NullPointerException("User already Exists");
		}

	}

	@Override
	public User getUserId(String name) {
		User user = userRepository.findByUserName(name);
		return user;
	}

}
