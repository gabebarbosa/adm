json.extract! ticket, :id, :description, :customer_id, :ticket_type_id, :user_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
