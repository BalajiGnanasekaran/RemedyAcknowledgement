package com.mock.exception;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import com.mock.RemedyAcknowledgement.RemedyAcknowledgementApplication;

/**
 * @author kumaran_m
 *
 */
@ControllerAdvice
public class GlobalExceptionHandler {
	private static final Logger logger = LogManager.getLogger(RemedyAcknowledgementApplication.class);

	/*
	 * @ExceptionHandler public ResponseEntity<ErrorResponse>
	 * handleItemNotFoundException(ItemNotFoundException ie){ ErrorResponse e =
	 * new ErrorResponse(); e.setMessage(ie.getMessage());
	 * e.setStatus(HttpStatus.NOT_FOUND.value()); return new
	 * ResponseEntity<ErrorResponse>(e, HttpStatus.NOT_FOUND); }
	 */

	@ExceptionHandler
	public ModelAndView handleTicketNotFoundException(TicketNotFoundException ie) {

		logger.info(ie.getMessage());
		ErrorResponse e = new ErrorResponse();
		e.setMessage(ie.getMessage());
		e.setStatus(HttpStatus.NOT_FOUND.value());
		return new ModelAndView("exceptionpage", "error", e);
	}
}
