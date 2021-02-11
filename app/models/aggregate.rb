class Aggregate < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
    validates :result_comment
    validates :start_day
    validates :user_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ability
  belongs_to_active_hash :period

  with_options numericality: {other_than: 1} do
  validates :ability_id
   validates :period_id
  end
end
