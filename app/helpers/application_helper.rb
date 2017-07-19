module ApplicationHelper
	def ticket_status(ticket)
		ticket.open == true ? 'Aberto' : 'Fechado'
	end
end
