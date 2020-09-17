class Pitch < ApplicationRecord
  belongs_to :solution
  belongs_to :user
  has_one :problem, through: :solution
  has_many :votes, as: :votable
  
  validates :title, length: { in: 3..60 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 400 }, presence: true
  validates :link, uniqueness: true
end
