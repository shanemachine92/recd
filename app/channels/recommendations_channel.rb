class RecommendationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "recommendations_#{params['recommendation_id']}_channel"
  end

  def unsubscribed
  end

  def send_review(data)
    current_user.reviews.create!(body: data['review'], recommendation_id: data['recommendation_id'])
  end
end
