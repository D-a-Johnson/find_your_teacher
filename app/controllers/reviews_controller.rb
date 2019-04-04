class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def create
    @review = Review.new
    @review.user = current_user
    @lesson = Lesson.find(params[:lesson_id])
    @review.lesson = @lesson
    if @review.save
      redirect_to lesson_path(@lesson)
    else
      render "lessons/show"
    end
  end

  def destroy
    @review.destroy
    redirect_to lesson_path(@lesson)
  end

  private

  def review_params
    params.require(:review).permit(:user_id, :lesson_id, :rating, :content)
  end
end
