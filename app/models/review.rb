class Review < ApplicationRecord
  belongs_to :user, dependent: :destroy

  belongs_to :recommendation

  validates :body, presence: true, length: { minimum: 5, maximum: 3000 }

  after_create_commit { ReviewBroadcastJob.perform_later(self) }
end
