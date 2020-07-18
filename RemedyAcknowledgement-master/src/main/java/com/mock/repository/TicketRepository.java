package com.mock.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.mock.model.Ticket;

@Repository
public interface TicketRepository extends CrudRepository<Ticket, Long> {
	@Modifying
    @Query(nativeQuery=true ,value="UPDATE ticket SET ticket_status = :ticketStatus WHERE ticket_id = :ticketId")

	void updateTicket(@Param("ticketStatus") String ticketStatus,@Param("ticketId") Long ticketId);
	
	@Query(nativeQuery=true, value="select * from ticket where ticket_status in ('PENDING','INPROGRESS') ")
	List<Ticket> getTickets();

}
