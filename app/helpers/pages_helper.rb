module PagesHelper
  def twitter_parser (tweet)
    regex = %r{
      \b
      (
        (?: [a-z][\w-]+:
         (?: /{1,3} | [a-z0-9%] ) |
          www\d{0,3}[.] |
          [a-z0-9.\-]+[.][a-z]{2,4}/
        )
        (?:
         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
        )+
        (?:
          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
        )
      )
    }ix

    tweet.gsub(regex) do |url|
      "<a href='#{url}' target='_blank'>#{url}</a>"
    end.html_safe
  end
end


# "wnfamousartists: RT @worldnewsdotcom: Writing the next Dragon Age #DragonAge4 #DA4 #Bioware #gamedev <a href='https://t.co/KMw4c1P0uM' target='_blank'>https://t.co/KMw4c1P0uM</a> <a href='https://t.co/sOQ6y6h4Y8' target='_blank'>https://t.co/sOQ6y6h4Y8</a>" 
