class Aggregate < ApplicationRecord
  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ability

  validates :ability_id, numericality: {other_than: 1}
end
