class Recommendation < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged

  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates_presence_of :title, :summary

  def self.recent 
    order("created_at DESC")
  end
end
