class Ticket < ApplicationRecord
	belongs_to :customer
	belongs_to :recipient, :class_name => 'User', :foreign_key => 'recipient_id'
	belongs_to :creator, :class_name => 'User', :foreign_key => 'user_id'
	belongs_to :ticket_type
end
