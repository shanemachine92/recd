class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]
  layout "recommendation"
  access all: [:show, :index], site_admin: :all

  # GET /recommendations
  def index
    @page_title = "All Recommended Fics| Curated Fanfiction"
    @recommendations = Recommendation.recent.all
    @recs_paginate = Recommendation.recent.paginate(page: params[:page], :per_page => 10)
  end

  # GET /recommendations/1
  def show
    @page_title = @recommendation.title
    @recommendation = Recommendation.includes(:reviews).friendly.find(params[:id])
    @review = Review.new
  end

  # GET /recommendations/new
  def new
    @recommendation = Recommendation.new
    @page_title = "Add New Rec"
  end

  # GET /recommendations/1/edit
  def edit
     @page_title = "Edit Rec"
  end

  # POST /recommendations
  def create
    @recommendation = Recommendation.new(recommendation_params)

    respond_to do |format|
      if @recommendation.save
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /recommendations/1
  def update
    respond_to do |format|
      if @recommendation.update(recommendation_params)
        format.html { redirect_to @recommendation, notice: 'Recommendation was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /recommendations/1
  def destroy
    @recommendation.destroy
    respond_to do |format|
      format.html { redirect_to recommendations_url, notice: 'Recommendation was successfully deleted.' }
    end
  end

  private
  
  def set_recommendation
    @recommendation = Recommendation.friendly.find(params[:id])
  end

  def recommendation_params
    params.require(:recommendation).permit(
                                          :title,
                                          :url,
                                          :author,
                                          :pairings,
                                          :summary, 
                                          :rated,
                                          :language,
                                          :genre,
                                          :chapters,
                                          :words,
                                          :genre, 
                                          :complete,
                                          :recommended_by 
                                          )
  end
end
