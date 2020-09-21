class Chatroom < ApplicationRecord
    belongs_to :solution
    has_many :messages
end
