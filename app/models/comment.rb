class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :objective

  with_options presence: true do
    validates :text
    validates :user_id
    validates :objective_id
  end
end
