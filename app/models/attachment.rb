class Attachment < ApplicationRecord
  belongs_to :attachable, polymorphic: true
  has_many :attachment_boardgames
  has_many :boardgames, through: :attachment_boardgames
end
