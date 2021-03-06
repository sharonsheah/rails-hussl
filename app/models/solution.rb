class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :problem
  has_many :pitches
  has_many :votes, as: :votable
  has_many :comments, as: :commentable
  has_many :users, through: :comments
  has_many :collaborations
  has_many :collaborators, through: :collaborations, source: :user
  has_one :chatroom

  validates :title, presence: true, uniqueness: true, length: { in: 3..60 }
  validates :description, presence: true, length: { maximum: 400 }
end
