package com.mock.service;

import com.mock.model.User;

/**
 * @author kumaran_m
 * 
 *         It contains custom CRUD operations methods
 *
 */

public interface UserService {

	void saveRegistration(User user);

	User getUserId(String name);

}
