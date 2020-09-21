class Chatroom < ApplicationRecord
    belongs_to :solution, foreign_key: :chatroom
    has_many :messages, dependent: :destroy
end
