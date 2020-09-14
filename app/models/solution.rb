class Solution < ApplicationRecord
  belongs_to :user
  belongs_to :problem
  has_many :pitches
  has_many :votes, as: :votable

  validates :title, presence: true, uniqueness: true, length: { in: 6..30 }
  validates :description, presence: true, uniqueness: true, length: { maximum: 360 }
end
