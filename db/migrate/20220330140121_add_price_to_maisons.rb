class AddPriceToMaisons < ActiveRecord::Migration[6.1]
  def change
    add_column :maisons, :price, :integer
  end
end
