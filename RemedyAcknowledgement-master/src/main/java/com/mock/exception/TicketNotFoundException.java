package com.mock.exception;

/**
 * @author kumaran_m
 *
 */
public class TicketNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	public TicketNotFoundException(String message, Throwable cause) {
		super(message, cause);
	}

	public TicketNotFoundException(String message) {
		super(message);
	}

	public TicketNotFoundException(Throwable cause) {
		super(cause);
	}

}
