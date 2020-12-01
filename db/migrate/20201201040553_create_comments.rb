class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id,      null: false
      t.integer :objective_id,  null: false
      t.text    :text
      t.timestamps
    end
  end
end
