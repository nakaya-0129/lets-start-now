class CreateAggregates < ActiveRecord::Migration[6.0]
  def change
    create_table :aggregates do |t|
      t.integer :user_id,         null: false
      t.integer :ability_id,     null: false
      t.integer :ability_point,       null: false
      t.integer :continuation_data,  null: false  
      t.integer :action_point,       null:false 
      t.string  :self_compliment,    null:false       
      t.timestamps
    end
  end
end
