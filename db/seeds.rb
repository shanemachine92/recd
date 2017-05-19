12.times do |rec|
  Recommendation.create!(
    title: "The Falling Leviathan",
    url: "https://www.fanfiction.net/s/12209953/1/The-Falling-Leviathan",
    author: "missminamurray969",
    pairings: "Merrill/Female Hake",
    summary: "Far away from Ferelden and the Blight, the Hawke family comes to Kirkwall, the city of chains. Things begin to go wrong, for everyone. 
    The world is full of magic, after all, and nothing stays forgotten forever. Third in The Unwoven Tapestry series.",
    rated: "T",
    language: "English",
    genre:"Adventure",
    chapters: 32,
    words: 115524,
    rating: 3.7,
    complete: true,
    )
end

puts "20 recs created"


