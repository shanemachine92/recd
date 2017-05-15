class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]

  # GET /recommendations
  def index
    @recommendations = Recommendation.all
  end

  # GET /recommendations/1
  def show
  end

  # GET /recommendations/new
  def new
    @recommendation = Recommendation.new
  end

  # GET /recommendations/1/edit
  def edit
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

  def reviews
    @reviews = Review.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommendation
      @recommendation = Recommendation.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommendation_params
      params.require(:recommendation).permit(:title, :summary, :author, :genre, :length, :rating, :complete, :recommended_by, :recommender_review)
    end
end
