class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])
    @user = current_user
    authorize @user

    @lesson = Lesson.new
    authorize @lesson

    # @lessons = Lesson.where(user_id: params[:id])
    @lessons = current_user.lessons
    # @appointments = Appointment.where(user_id: params[:id])
    @appointments = current_user.appointments
  end

  private
end
