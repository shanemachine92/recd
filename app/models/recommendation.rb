class Recommendation < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :summary

  has_many :reviews

  def self.fantasy
    where(genre: "fantasy")
  end

  def self.OUAT
    where(fandom: "OUAT")
  end

  scope :completed_fic, -> {where(complete: true)}

end
