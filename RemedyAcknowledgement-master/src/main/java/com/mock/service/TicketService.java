package com.mock.service;

import java.util.List;

import com.mock.model.Ticket;

public interface TicketService {

	Long getUserId(String userName);

	List<Ticket> findAlltickets();

	void createTicket(Ticket ticket);
	
	public List<Ticket> getTicketList();

	public Ticket getTicket(Long ticketId);

	public void updateTicket(Ticket ticket);


}
