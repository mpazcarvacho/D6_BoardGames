class AttachmentBoardgame < ApplicationRecord
  belongs_to :attachment_id
  belongs_to :boardgame_id
end
