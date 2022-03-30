class AddUserToMaisons < ActiveRecord::Migration[6.1]
  def change
    add_reference :maisons, :user, null: false, foreign_key: true
  end
end
