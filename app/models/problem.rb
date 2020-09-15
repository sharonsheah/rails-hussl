class Problem < ApplicationRecord
  CATEGORY = ["Software & Services", "Consumer", "Education", "Healthcare", "Real Estate & Construction", "Financial Technology", "Financial Technology", "Government", "Unspecified"]
  
  belongs_to :user
  has_many :solutions
  has_many :pitches, through: :solutions
  has_many :votes, as: :votable

  validates :title, presence: true, length: { in: 6..60 }, uniqueness: true
  validates :description, presence: true, length: { maximum: 360 }
end
