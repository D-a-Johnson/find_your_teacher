class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user

    @lessons = Lesson.where(user_id: params[:id])

    @appointments = Appointment.where(user_id: params[:id])
  end

  private

end
