class Objective < ApplicationRecord
  has_one_attached :image,  dependent: :destroy 
  belongs_to :user
  has_many :likes
  has_many :comments, dependent: :destroy

  with_options presence: {message: "は必須です"} do
    validates :user_name
    validates :one_day
    validates :user_id
    validates :action_plan
    validates :image
  end
    validates :one_day,length: {in: 0..20, message: "の制限を超えています"}
    validates :user_name,length: {in: 0..10, message: "の制限を超えています"}
    validates :hobituation,length: {in: 0..20, message: "の制限を超えています"}
    validates :action_plan,length: { in: 0..50 , message: "の制限を超えています"}

  with_options length: {in: 0..100,message: "は100文字以内で入力して下さい" } do
    validates :merit
    validates :demerit
  end
  
  extend ActiveHash::Associations::ActiveRecordExtensions

  with_options numericality: {other_than: 1,message: "を選択して下さい"} do
    validates :category_id
    validates :hobit_id
  end
  

  belongs_to_active_hash :category
  belongs_to_active_hash :hobit
end
