class AddOpenToTicket < ActiveRecord::Migration[5.1]
  def change
    add_column :tickets, :open, :boolean, default: true
  end
end
