class CreateAggregates < ActiveRecord::Migration[6.0]
  def change
    create_table :aggregates do |t|
      t.integer :user_id,            null: false
      t.integer :ability_id
      t.string  :result_comment,      null: false
      t.date    :start_day,          null: false  
      t.integer :action_point
      t.integer :period_id
      t.string  :self_compliment
      t.timestamps
    end
  end
end
