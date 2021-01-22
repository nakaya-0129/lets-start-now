class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates :profile, length: { maximum: 200 }
         
has_many :objectives   
has_many :comments 
has_many :aggregates  
has_many :group_users
has_many :groups, through: :group_users 
mount_uploader :image, ImageUploader
end
