module RecommendationsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 60
  end

  def options_for_rated
    [
      ["", ""],
      ["K", "k"],
      ["K+", "k+"],
      ["T", "T"],
      ["M", "M"],
      ["MA", "MA"]
    ]
  end

  def options_for_language
    [
      ["", ""],
      ["Deutsch", "Deutsch"],
      ["English", "English"],
      ["Español", "Español"],
      ["Italiano", "Italiano"],
      ["Português", "Português"]
    ]
  end

  def options_for_genre
   [
    ["", ""],
    ["Adventure", "Adventure"],
    ["Angst", "Angst"],
    ["Crime", "Crime"],
    ["Drama", "Drama"],
    ["Family", "Family"],
    ["Fantasy", "Fantasy"],
    ["General", "General"],
    ["Horror", "Horror"],
    ["Hurt/Comfort", "Hurt/Comfort"],
    ["Mystery", "Mystery"],
    ["Parody", "Parody"],
    ["Poetry", "Poetry"],
    ["Romance", "Romance"],
    ["Sci-Fi", "Sci-Fi"],
    ["Spiritual", "Spiritual"],
    ["Supernatural", "Supernatural"],
    ["Suspense", "Suspense"],
    ["Tradegy", "Tradegy"],
    ["Western", "Western"]
  ]
  end
end
