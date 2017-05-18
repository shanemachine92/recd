class Recommendation < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  has_many :reviews 
  has_many :fandoms
  
  accepts_nested_attributes_for :fandoms, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  validates_presence_of :title, :summary

  def self.fantasy
    where(genre: "fantasy")
  end

  def self.OUAT
    where(fandom: "OUAT")
  end

  scope :completed_fic, -> {where(complete: true)}

  # RATINGS = [
  #   'K', 'K+', 'T', 'M', 'MA'
  # ]

end
