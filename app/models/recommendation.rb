class Recommendation < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :reviews, dependent: :destroy

  validates_presence_of :title, :summary

  def self.fantasy
    where(genre: "fantasy")
  end

  scope :completed_fic, -> {where(complete: true)}

end
