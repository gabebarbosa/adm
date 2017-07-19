class AddRecipientIdToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :recipient_id, :integer
  end
end
