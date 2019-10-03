class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :records
  has_many :comments
  has_one_attached :avatar
  validates :name, :email, presence: true
end
