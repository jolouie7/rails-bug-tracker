class CreateTicketHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :ticket_histories do |t|
      t.references :ticket, null: false, foreign_key: true
      t.string :title
      t.string :ticket_creator
      t.string :developer
      t.string :status
      t.text :description
      t.string :priority
      t.string :ticket_type

      t.timestamps
    end
  end
end
