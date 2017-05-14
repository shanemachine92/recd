5.times do |rec|
  Recommendation.create!(
    title: "My rec #{rec}",
    summary: "some stuff happens and it is wild!",
    author: "shane",
    genre:"horror",
    length: 50000,
    rating: 3.7,
    complete: true,
    recommended_by: "bri",
    recommender_review: "it is short but sweet"
    )
end

puts "5 recs created"

