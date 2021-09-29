class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  has_one_attached :comment_avatar, dependent: :destroy
end
