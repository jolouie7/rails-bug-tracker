class CreateUserProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :user_projects do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :project_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
