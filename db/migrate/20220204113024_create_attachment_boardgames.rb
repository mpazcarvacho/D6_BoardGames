class CreateAttachmentBoardgames < ActiveRecord::Migration[5.2]
  def change
    create_table :attachment_boardgames do |t|
      t.references :attachment_id, foreign_key: true
      t.references :boardgame_id, foreign_key: true

      t.timestamps
    end
  end
end
