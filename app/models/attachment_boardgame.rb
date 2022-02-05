class AttachmentBoardgame < ApplicationRecord
  belongs_to :attachment
  belongs_to :boardgame
end
