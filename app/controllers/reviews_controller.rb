class ReviewsController < ApplicationController
  def new
    @maison = Maison.find(params[:maison_id])
    @review = Review.new
  end

  def create
    @maison = Maison.find(params[:maison_id])
    @review = Review.new(review_params)
    @review.maison = @maison

    if @review.save
      redirect_to maison_path(@maison)
    else
      render :new
    end

  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
