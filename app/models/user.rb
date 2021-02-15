class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates :profile, length: { maximum: 200 }
         
has_many :objectives 
has_many :likes  
has_many :comments 
has_many :aggregates  
has_many :group_users
has_many :groups, through: :group_users 
has_many :favorites, dependent: :destroy
mount_uploader :image, ImageUploader

  def liked_by?(objective_id)
    likes.where(objective_id: objective_id).exists?
  end
end
