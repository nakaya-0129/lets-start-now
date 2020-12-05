class Aggregate < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :ability_id
    validates :ability_point, format:{with: /\A[0-9]+\z/}
    validates :action_point, format:{with: /\A[0-9]+\z/}
    validates :start_day
    validates :period_id
    validates :user_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ability
  belongs_to :period

  with_options numericality: {other_than: 1} do
  validates :ability_id
   validates :period_id
  end
end
