class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.references :project_id, null: false, foreign_key: true
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
