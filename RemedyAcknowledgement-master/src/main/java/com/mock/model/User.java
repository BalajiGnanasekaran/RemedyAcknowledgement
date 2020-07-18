package com.mock.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * @author kumaran_m
 * 
 *         This is Entity class for user
 *
 */
@Entity
@Table(name = "user")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_id", nullable = false)
	private long userId;
	@NotEmpty(message = "please enter UserName")
	@Column(name = "user_name", nullable = false)
	private String userName;
	@NotEmpty(message = "please enter UserPassword")
	@Column(name = "user_password", nullable = false)
	private String userPassword;
	@OneToOne(cascade = CascadeType.ALL)
	// @JoinColumn(name="user")
	private Roles role;
	@Column(name = "user_enabled", nullable = false)
	private boolean enabled;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public Roles getRole() {
		return role;
	}

	public void setRole(Roles role) {
		this.role = role;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword + ", role=" + role
				+ ", enabled=" + enabled + "]";
	}

}
