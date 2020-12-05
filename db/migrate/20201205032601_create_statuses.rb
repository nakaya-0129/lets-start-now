class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.integer :knowledge
      t.integer :self_management
      t.integer :imageintion
      t.integer :sustainability
      t.integer :achievement
      t.integer :empathy

      t.timestamps
    end
  end
end
