class Imagepiece < ApplicationRecord
  has_many :attachments, as: :attachable
end
