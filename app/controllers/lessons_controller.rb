class LessonsController < ApplicationController
  before_action :find_lesson, only: [:show, :edit, :destroy, :update]
  def index
    @lessons = policy_scope(Lesson).where.not(lat: nil, lng: nil)
    authorize @lessons
    @markers = @lessons.map do |lesson|
      {
        lat: lesson.lat,
        lng: lesson.lng,
        infoWindow: render_to_string(partial: "infowindow", locals: { lesson: lesson })
      }
    end
  end

  def show
    authorize @lesson
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    authorize @lesson
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def update
    authorize @lesson
    if @lesson.update(lesson_params)
      redirect_to lesson_path(@lesson)
    else
      render :new
    end
  end

  def destroy
    authorize @lesson
    if @lesson.destroy
      flash[:notice] = "Lesson Removed"
    else
      flash[:alert] = "Lesson could not be removed"
    end
    redirect_to lessons_path
  end

  private

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:price, :duration, :date, :city, :postal_code)
  end
end
