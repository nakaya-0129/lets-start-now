class Objective < ApplicationRecord
  has_one_attached :image,  dependent: :destroy 
  belongs_to :user
  has_many :comments

  
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :hobit
end
