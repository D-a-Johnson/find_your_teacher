class LessonsController < ApplicationController
  before_action :find_lesson, only: [:show, :edit, :destroy, :update]
  def index
    @lessons = Lesson.all
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.create(lesson_params)
  end

  def update
    @lesson.update(lesson_params)
  end

  def destroy
    @lesson.destroy
  end

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end

  private

  def lesson_params
    params.require(:lesson).permit(:price, :duration, :date, :city, :postal_code)
  end
end
