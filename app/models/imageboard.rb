class Imageboard < ApplicationRecord
  has_many :attachments, as: :attachable
end
