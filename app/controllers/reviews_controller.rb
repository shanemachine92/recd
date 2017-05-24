class ReviewsController < ApplicationController
  def create
    @review = current_user.reviews.build(review_params)

      respond_to do |format|
      if @review.save
        format.html { redirect_to @recommendation, notice: 'Review was successfully created.' }
      else
        format.html { render :create }
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end
