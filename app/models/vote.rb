class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :votable, polymorphic: true
  # validates :votable, uniqueness: { scope: :user }
end
