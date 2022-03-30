class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :content
      t.string :rating
      t.references :maison

      t.timestamps
    end
  end
end
