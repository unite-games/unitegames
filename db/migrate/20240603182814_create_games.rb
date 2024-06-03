class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :category
      t.float :price

      t.timestamps
    end
  end
end
