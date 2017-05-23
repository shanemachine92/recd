class Recommendation < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  has_many :reviews, dependent: :destroy
  # belongs_to :user

  validates_presence_of :title, :summary

  def self.search(search)
    where("title LIKE ? OR by LIKE ? OR pairings LIKE ? OR summary LIKE? OR rated LIKE ? 
      OR language LIKE ? OR genre LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", 
      "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
  end
end
