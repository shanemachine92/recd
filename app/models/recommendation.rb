class Recommendation < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :reviews, dependent: :destroy
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

end
