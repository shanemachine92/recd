class PagesController < ApplicationController
  def home
    @fics = Recommendation.all
  end

  def about
  end

  def contact
  end
end
