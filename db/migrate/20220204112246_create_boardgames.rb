class CreateBoardgames < ActiveRecord::Migration[5.2]
  def change
    create_table :boardgames do |t|
      t.string :name
      t.integer :min_players
      t.integer :max_players
      t.text :description
      t.string :ages

      t.timestamps
    end
  end
end
