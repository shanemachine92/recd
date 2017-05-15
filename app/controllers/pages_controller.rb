class PagesController < ApplicationController
  def home
    @fics = Recommendation.all
    @users = User.all
  end

  def about
  end
end
