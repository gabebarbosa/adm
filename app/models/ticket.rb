class Ticket < ApplicationRecord
	belongs_to :customer
	belongs_to :user
	belongs_to :ticket_type
end
