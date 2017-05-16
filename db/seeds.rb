6.times do |rec|
  Recommendation.create!(
    username: "shane",
    title: "My rec #{rec}",
    fandom: "OUAT",
    summary: "some stuff happens and it is wild!",
    author: "shane",
    genre:"horror",
    length: 50000,
    rating: 3.7,
    complete: true,
    recommender_review: "it is short but sweet"
    )
end

puts "6 recs created"

2.times do |rec|
  Recommendation.create!(
    username: "bri",
    title: "My rec #{rec}",
    fandom: "Buffy",
    summary: "some stuff happens and it is wild!",
    author: "isabela",
    genre:"fantasy",
    length: 8000,
    rating: 4.9,
    complete: false,
    recommender_review: "it is short but sweet"
    )
end

puts "2 special recs created"

6.times do |review|
  Review.create!(
    username: "Shane",
    rating: 5,
    body: "voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    recommendation_id: Recommendation.last.id
    )
end

1.times do |review|
  Review.create!(
    username: "Isabela",
    rating: 4,
    body: "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo",
    recommendation_id: Recommendation.first.id
    )
end

puts "7 reviews created"

3.times do |fandom|
Fandom.create!(
  name: "OUAT",
  )
end

puts "3 fandoms created"




