class CreateObjectives < ActiveRecord::Migration[6.0]
  def change
    create_table :objectives do |t|
      t.string :user_name,        null: false
      t.integer :category_id,     null: false
      t.integer :hobit_id,        null: false
      t.string :one_day,          null: false
      t.string :action_plan,      null: false
      t.string :hobituation
      t.string :merit
      t.string :demerit
      t.references :user,           null: false, foreign_key: true 
      t.timestamps
    end
  end
end
