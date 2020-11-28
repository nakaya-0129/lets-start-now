class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.integer :category_id,    null: false
      t.integer :hobit_id,       null: false
      t.string :one_day,         null: false
      t.string :one_week
      t.string :month
      t.string :three_month
      t.string :year
      t.references :user,           null: false, foreign_key: true 
      t.timestamps
    end
  end
end
