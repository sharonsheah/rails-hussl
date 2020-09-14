class Problem < ApplicationRecord
  belongs_to :user
  has_many :solutions
  has_many :pitches, through: :solutions
  has_many :votes, as: :votable

  validates :title, presence: true, length: { in: 6..30 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 360 }, uniqueness: true
end
