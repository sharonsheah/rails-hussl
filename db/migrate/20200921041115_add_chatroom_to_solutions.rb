class AddChatroomToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :chatroom, :references
  end
end
