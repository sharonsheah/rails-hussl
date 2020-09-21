class AddStatusToCollaborations < ActiveRecord::Migration[6.0]
  def change
    add_column :collaborations, :status, :string
  end
end
