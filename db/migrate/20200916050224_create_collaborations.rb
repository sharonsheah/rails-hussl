class CreateCollaborations < ActiveRecord::Migration[6.0]
  def change
    create_table :collaborations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :solution, null: false, foreign_key: true

      t.timestamps
    end
  end
end
