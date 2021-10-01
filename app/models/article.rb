class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :price, presence: true
  has_one_attached :article_avatar, dependent: :destroy
  after_create :log_task_details

  def log_task_details
    TaskLoggerJob.perform_later(self)
  end
end
