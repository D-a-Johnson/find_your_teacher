class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def create

  end

  def destroy
  end

  private

  def review_params

  end
end
