class Boardgame < ApplicationRecord
  has_many :attachment_boardgames
  has_many :attachments, through: :attachment_boardgames
end
