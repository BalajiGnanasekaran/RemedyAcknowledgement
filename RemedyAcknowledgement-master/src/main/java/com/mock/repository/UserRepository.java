package com.mock.repository;

import org.springframework.data.repository.CrudRepository;

import com.mock.model.User;

/**
 * @author kumaran_m
 * 
 *         It contains custom CRUD operations methods
 *
 */
public interface UserRepository extends CrudRepository<User, Long> {

	User findByUserName(String userName);
	
}
