class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string  :user_name, null: false
      t.string  :name,    null: false
      t.index   :name,    unique: true
      t.text    :comment, null: false
      t.integer :category_id,  null:false
      t.timestamps
    end
  end
end
