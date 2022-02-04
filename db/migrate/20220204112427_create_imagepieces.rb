class CreateImagepieces < ActiveRecord::Migration[5.2]
  def change
    create_table :imagepieces do |t|
      t.string :name

      t.timestamps
    end
  end
end
