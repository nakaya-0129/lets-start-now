class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable ,:validatable

validates :email, length: { minimum: 1, message: "は必須です"}
validates :nick_name, length: { minimum: 1, message: "は必須です"}
validates :nick_name, length: { maximum: 10,message: "の制限を超えています"}
validates :profile, length: { maximum: 100 ,message: "の制限を超えています"}
validates :password,length: {in: 6..15,message: "の入力が不正です"}
validates :image, presence: {message: "は必須です"}


         
has_many :objectives 
has_many :likes  
has_many :comments 
has_many :aggregates  
has_many :favorites, dependent: :destroy
mount_uploader :image, ImageUploader

  def liked_by?(objective_id)
    likes.where(objective_id: objective_id).exists?
  end
end
