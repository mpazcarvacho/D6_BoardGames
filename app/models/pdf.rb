class Pdf < ApplicationRecord
  has_many :attachments, as: :attachable
  has_many_attached :rules
end
