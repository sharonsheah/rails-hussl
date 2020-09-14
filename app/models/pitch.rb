class Pitch < ApplicationRecord
  belongs_to :solution
  belongs_to :user
  belongs_to :problem, through: :solutions
  has_many :votes, as: :votable
  
  validates :title, length: { in: 6..60 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 360 }, presence: true, uniqueness: true
end
