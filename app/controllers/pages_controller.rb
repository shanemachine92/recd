class PagesController < ApplicationController
  def home
    @fics = Recommendation.all
  end

  def about
  end
end
