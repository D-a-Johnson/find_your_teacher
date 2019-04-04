class LessonsController < ApplicationController
  before_action :find_lesson, only: [:show, :edit, :destroy, :update]
  def index
    @lessons = policy_scope(Lesson)
  end

  def show
    authorize @lesson
    @appointment = Appointment.new
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

      # render partial: 'lessons/create', locals: {lesson: @lesson}
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
    redirect_to user_path(@lesson.user_id)
  end

  private

  def find_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:date, :duration, :price, :category_id, :city, :postal_code, :detail)
  end
end
