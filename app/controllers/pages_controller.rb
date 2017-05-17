class PagesController < ApplicationController
  def home
  end

  def fandoms
    @fandoms = Fandom.all
  end

  def about
  end

  def contact
  end

end
