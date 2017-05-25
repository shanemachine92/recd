class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end

  def da_news
    @tweets = SocialTool.twitter_search
  end

  def faqs
  end
end
