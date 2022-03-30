class CreateMaisons < ActiveRecord::Migration[6.1]
  def change
    create_table :maisons do |t|
      t.string :name
      t.integer :surface
      t.integer :capacity
      t.string :view
      t.integer :chambre
      t.boolean :available

      t.timestamps
    end
  end
end
