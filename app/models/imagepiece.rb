class Imagepiece < ApplicationRecord
  has_many :attachments, as: :attachable
  has_many_attached :img_pieces
end
  