class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.text :description
      t.integer :customer_id
      t.integer :ticket_type_id
      t.integer :user_id

      t.timestamps
    end
  end
end
