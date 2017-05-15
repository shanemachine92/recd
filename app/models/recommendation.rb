class Recommendation < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :summary

  has_many :reviews
end
