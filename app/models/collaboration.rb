class Collaboration < ApplicationRecord
  belongs_to :user
  belongs_to :solution

  validates :solution, uniqueness: { scope: :user }
  validates :status, inclusion: { in: %w(Pending Accepted Rejected) }
end
