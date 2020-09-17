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
  #has_many :solutions, through: :collaboration
  has_one_attached :photo

  validates :first_name, uniqueness: { scope: :last_name }
  validates :first_name, :last_name, length: { minimum: 2 }
  validates :email, presence: true, uniqueness: true
end
