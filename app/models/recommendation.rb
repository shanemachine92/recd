class Recommendation < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  has_many :reviews, dependent: :destroy
  # belongs_to :user

  validates_presence_of :title, :summary

  def self.fantasy
    where(genre: "fantasy")
  end

  scope :completed_fic, -> {where(complete: true)}

end
