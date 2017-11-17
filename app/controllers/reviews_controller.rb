class ReviewsController < ApplicationController
  def index
  end

  def edit
  end

  def create
    @movie = Movie.find_by(id: params[:movie_id])
    @review = @movie.reviews.new(user: current_user, body: review_params[:body])

    if @review.save
      redirect_to @movie, notice: "Review created"
    else
      redirect_to @movie, notice: "Review was not saved. Ensure that you have entered a review"
    end
  end

  private

  def review_params
    params.require(:review).permit(:body)
  end
end
