class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users
  accepts_nested_attributes_for :group_users
  
  validates :name, presence: true, uniqueness: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
end
