module ReviewsHelper
  def gravatar_helper user
    image_tag "https://www.gravatar.com/avatar/#{Digest::MDS.hexdigest(user.email)}", width:40
  end
end
