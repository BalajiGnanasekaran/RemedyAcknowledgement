package com.mock.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author kumaran_m
 * 
 *         This is Entity class for Roles
 *
 */
@Entity
@Table(name = "roles")
public class Roles {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "role_id")
	private int id;

	@Column(name = "roles")
	private String roles;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Roles() {
		super();
	}

	public String getRoles() {
		return roles;
	}

	public void setRoles(String roles) {
		this.roles = roles;
	}

	public Roles(String roles) {
		super();
		this.roles = roles;
	}
}
