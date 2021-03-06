class LessonsController < ApplicationController
  before_action :find_lesson, only: [:show, :edit, :destroy, :update]
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @lessons = policy_scope(Lesson).where.not(latitude: nil, longitude: nil)
    @appointments = policy_scope(Appointment)
    @categories = Category.all
    @free_lessons = Lesson.where.not(id: Appointment.pluck(:lesson_id).uniq)
    @lessons = @free_lessons.search_params(params)

    @markers = @lessons.map do |lesson|
      {
        lat: lesson.latitude,
        lng: lesson.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { lesson: lesson })
      }
    end
  end

  def show
    authorize @lesson
    @appointment = Appointment.new
    @review = Review.new
    @markers = [{
        lat: @lesson.latitude,
        lng: @lesson.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { lesson: @lesson })
    }]
  end

  def new
    @lesson = Lesson.new
    authorize @lesson
  end

  def create
    @lesson = Lesson.new(lesson_params)
    authorize @lesson
    @lesson.user = current_user

    if @lesson.save
      redirect_to user_path(current_user)
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
    redirect_to user_path(current_user)
  end

  private

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:date, :duration, :price, :category_id, :city, :address, :detail)
  end
end
