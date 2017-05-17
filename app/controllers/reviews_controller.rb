class ReviewsController < ApplicationController
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]

  def show
    redirect_to @reccomendation.show
  end
  
  def new
    @review = Review.new
    @page_title = "New Review"
  end

  def edit
     @page_title = "Edit Review"
  end

  def create
    @review = Review.new(review_params)
     respond_to do |format|
        if @review.save
          format.html { redirect_to @reccomendation, notice: 'Review was successfully created.' }
        else
          format.html { render :new }
        end
      end
    end

  def update
     respond_to do |format|
        if @review.update(review_params)
          format.html { redirect_to @recommendation, notice: 'Review was successfully updated.' }
        else
          format.html { render :edit }
        end
      end
  end

  def destroy
  end

 private
    # Use callbacks to share common setup or constraints between actions.
   def set_recommendation
      @recommendation = Recommendation.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:username, :rating, :body)
    end
end