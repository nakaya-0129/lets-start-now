class Objective < ApplicationRecord
  has_one_attached :image,  dependent: :destroy 
  belongs_to :user
  has_many :comments, dependent: :destroy

  with_options presence: true do
    validates :user_name
    validates :one_day
    validates :user_id
  end
  
  
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options numericality: {other_than: 1} do
    validates :category_id
    validates :hobit_id
  end

  belongs_to_active_hash :category
  belongs_to_active_hash :hobit
end
