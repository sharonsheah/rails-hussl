class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :problems
  has_many :solutions
  has_many :pitches
  has_many :votes
  has_one :profile
  # has_many :solutions, through: :collaboration
  has_one_attached :photo
end
