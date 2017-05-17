class ReviewBroadcastJob < ApplicationJob
  queue_as :default

  def perform(review)
    ActionCable.server.broadcast "recommendations_#{comment.blog.id}_channel", render_review(review)
  end

  def render_review(review)
    ReviewsController.render partials: 'reviews/review', locals: {review: review}
  end
end