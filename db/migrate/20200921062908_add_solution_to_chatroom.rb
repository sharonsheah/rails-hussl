class AddSolutionToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :chatrooms, :solution, index: true
  end
end
