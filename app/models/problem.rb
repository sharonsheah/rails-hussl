class Problem < ApplicationRecord
  CATEGORY = ["Software & Services", "Consumer", "Education", "Healthcare", "Real Estate & Construction", "Financial Technology", "Government", "Unspecified"]
  
  belongs_to :user
  has_many :solutions
  has_many :pitches, through: :solutions
  has_many :votes, as: :votable
  has_many :comments, as: :commentable

  validates :title, presence: true, length: { in: 3..60 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 400 }
end
