class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :objective

  validates_uniqueness_of :ovjective_id, scope: :user_id
end
