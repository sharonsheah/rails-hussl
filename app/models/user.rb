class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :problems
  has_many :solutions
  has_many :pitches
  has_many :votes
  has_many :bookmarks
  has_many :bookmarked_problems, through: :bookmarks, source: :bookmarked, source_type: 'Problem'
  has_many :bookmarked_solutions, through: :bookmarks, source: :bookmarked, source_type: 'Solution'
  has_many :notifications, foreign_key: :recipient_id, dependent: :destroy
  has_one :profile
  has_one_attached :photo
end
