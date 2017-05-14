json.extract! recommendation, :id, :title, :summary, :author, :genre, :length, :rating, :string, :complete, :recommended_by, :recommender_review, :created_at, :updated_at
json.url recommendation_url(recommendation, format: :json)
