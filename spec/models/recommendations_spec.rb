require "rails_helper"

RSpec.describe Recommendation, :type => :model do
  it "adds a new recommendation" do
    new = Recommendation.create!(recommended_by: "shane", 
                                  title: "The Big Test", 
                                  url: "fanfiction.net", 
                                  author: "Lebowski01",
                                  pairings: "Me/The World", 
                                  summary: "All the world's a stage", 
                                  rated: "M", 
                                  language: "English",
                                  genre: "Crime", 
                                  chapters: 6, 
                                  words: 7098709, 
                                  complete: true
      )

    expect(Recommendation.count).to eq(1)
  end
end
