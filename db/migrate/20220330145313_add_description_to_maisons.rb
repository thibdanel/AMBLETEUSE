class AddDescriptionToMaisons < ActiveRecord::Migration[6.1]
  def change
    add_column :maisons, :description, :string
  end
end
