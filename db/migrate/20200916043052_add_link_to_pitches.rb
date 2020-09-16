class AddLinkToPitches < ActiveRecord::Migration[6.0]
  def change
    add_column :pitches, :link, :string
  end
end
