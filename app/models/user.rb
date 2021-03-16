class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable 

#validates :image, presence: {message: "を入力して下さい"}  
validates :nick_name, length: { minimum: 1, message: "入力は必須です"}
validates :nick_name, length: { maximum: 10,message: "の文字数制限を超えています"}
validates :email, length: { minimum: 1, message: "の入力は必須です"}
validates :password, presence: {message: "の入力は必須です"}
validates :password,length: {in: 6..30,message: "の入力が不正です"},on: :create
validates :profile, length: { maximum: 100 ,message: "の制限を超えています"}




         
has_many :objectives, dependent: :delete_all 
has_many :likes, dependent: :delete_all  
has_many :comments, dependent: :delete_all
has_many :aggregates, dependent: :delete_all 
has_many :relationships, dependent: :delete_all
has_many :followings, through: :relationships, source: :follow
has_many :reverse_of_reationships, class_name: 'Relationship', foreign_key: 'follow_id'
has_many :followers, through: :reverse_of_reationships, source: :user
mount_uploader :image, ImageUploader

def self.guest
  find_or_create_by!(email: 'guest@example.com',nick_name: 'user') do |user|
    user.password = SecureRandom.urlsafe_base64
  end
end

def follow(other_user)
  unless self == other_user
    self.relationships.find_or_create_by(follow_id: other_user.id)
  end
end

def unfollow(other_user)
  relationship = self.relationships.find_by(follow_id: other_user.id)
  relationship.destroy if relationship
end

def following?(other_user)
  self.followings.include?(other_user)
end

  def liked_by?(objective_id)
    likes.where(objective_id: objective_id).exists?
  end
end
