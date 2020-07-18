package com.mock.service;

import java.util.List;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mock.exception.TicketNotFoundException;
import com.mock.model.Ticket;
import com.mock.model.User;
import com.mock.repository.TicketRepository;
import com.mock.repository.UserRepository;

@Service
@Transactional
public class TicketServiceImpl implements TicketService {
	@Autowired
	TicketRepository ticketRepository;
	@Autowired
	UserRepository userRepository;
	private static final Logger logger = LogManager.getLogger(TicketServiceImpl.class);
	@Override
	public Long getUserId(String userName) {
		Long userId = null;
		try {
			User user = userRepository.findByUserName(userName);
			if (user != null) {
				userId = user.getUserId();
			}
		} catch (Exception e) {
			logger.info(e.getMessage());
		}
		return userId;
	}

	@Override
	public List<Ticket> findAlltickets() {
		return (List<Ticket>) ticketRepository.findAll();
	}

	@Override
	public void createTicket(Ticket ticket) {

		ticketRepository.save(ticket);
	}

	@Override
	public List<Ticket> getTicketList() {
		List<Ticket> ticketlist = (List<Ticket>) ticketRepository.getTickets();
		return ticketlist;

	}

	public Ticket getTicket(Long ticketId) {

		Ticket ticket = ticketRepository.findOne(ticketId);
		if (ticket == null) {
			throw new TicketNotFoundException("Ticket Id is Invalid");
		}
		return ticket;
	}

	@Override
	public void updateTicket(Ticket ticket) {

		Ticket ticket1 = ticketRepository.findOne(ticket.getTicketId());
		if (ticket1 == null) {
			throw new TicketNotFoundException("Ticket Id is Invalid");
		} else {
			ticketRepository.updateTicket(ticket.getTicketStatus(), ticket.getTicketId());
		}

	}

}