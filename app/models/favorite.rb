class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :objective

  validates_uniqueness_of :objective_id, scope: :user_id
end
