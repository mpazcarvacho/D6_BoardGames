class Imageboard < ApplicationRecord
  has_many :attachments, as: :attachable
  has_one_attached :img_board
end
