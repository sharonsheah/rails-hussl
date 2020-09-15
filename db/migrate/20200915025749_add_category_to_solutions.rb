class AddCategoryToSolutions < ActiveRecord::Migration[6.0]
  def change
    add_column :solutions, :category, :string
  end
end
