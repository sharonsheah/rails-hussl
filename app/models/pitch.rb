class Pitch < ApplicationRecord
  belongs_to :solution
  belongs_to :user
  has_one :problem, through: :solution
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  has_one_attached :photo
  
  validates :title, length: { in: 3..60 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 400 }, presence: true
end
