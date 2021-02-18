class Aggregate < ApplicationRecord
  belongs_to :user
  
  with_options presence: {message: "は必須です"} do
    validates :result_comment
    validates :start_day
    validates :user_id
  end
  validates :self_compliment,length: { maximum: 50,message: "の制限を超えています"}
  validates :result_comment,length: {maximum: 20, message: "の制限を超えています"}

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ability
  belongs_to_active_hash :period

  with_options numericality: {other_than: 1, message: "を選択して下さい"} do
  validates :ability_id
   validates :period_id
  end

  validates :action_point,length: {in: 0..3 },format: { with: /\A[0-9]+\z/},numericality: {only_integer: true,message:"は半角数字のみで入力して下さい"}, on: :update
end
